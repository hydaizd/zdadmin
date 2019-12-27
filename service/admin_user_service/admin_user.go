package admin_user_service

import (
	"errors"
	"fmt"
	"github.com/hydaizd/zdadmin/models"
	"github.com/hydaizd/zdadmin/pkg/casbin"
	"github.com/hydaizd/zdadmin/pkg/jwt"
	"github.com/hydaizd/zdadmin/service/admin_role_service"
	"github.com/hydaizd/zdadmin/service/oplog_service"
	"golang.org/x/crypto/bcrypt"
)

type AdminUser struct {
	UserId      int
	Username    string
	Password    string
	RealName    string
	Phone       string
	Email       string
	RoleIds     []int
	RuleIds     []int
	LoginUserId int
}

// 用户登录
func (m AdminUser) Login() (string, error) {
	adminUser, err := models.AdminUser{}.FindByUsername(m.Username)
	if err != nil {
		return "", err
	}
	if adminUser.UserId > 0 {
		// 进行密码验证
		if err := bcrypt.CompareHashAndPassword([]byte(adminUser.Password), []byte(m.Password)); err != nil {
			return "", errors.New("账号或密码错误")
		}
		// 判断是否被锁定
		if adminUser.LockedAt > 0 {
			return "", errors.New("账号已被管理员锁定")
		}
		// 生成token
		jwtObj := jwt.NewJWT()
		token, err := jwtObj.CreateToken(adminUser.UserId, adminUser.Username)
		if err != nil {
			return "", err
		}
		return token, nil
	}
	return "", errors.New("账号或密码错误")
}

// 创建用户
func (m AdminUser) Create() error {
	// 判断账户名是否已被注册
	adminUser, err := models.AdminUser{}.FindByUsername(m.Username)
	if err != nil {
		return err
	}
	if adminUser.UserId > 0 {
		return errors.New("账户名已被注册")
	}

	// 哈希处理用户输入的密码
	hashedPwd, err := bcrypt.GenerateFromPassword([]byte(m.Password), bcrypt.DefaultCost)
	if err != nil {
		return err
	}
	newAdminUser := &models.AdminUser{
		Username: m.Username,
		Password: string(hashedPwd),
		RealName: m.RealName,
		Phone:    m.Phone,
		Email:    m.Email,
	}
	err = models.AdminUser{}.Create(newAdminUser)

	// 添加操作日志
	_ = oplog_service.OpLog{
		OpTable:   "admin_user",
		OpAction:  "create",
		CommonId:  newAdminUser.UserId,
		CreatedBy: m.LoginUserId,
	}.Create()

	return err
}

// 设置用户角色
func (m AdminUser) SetRole() {
	for _, roleId := range m.RoleIds {
		// 添加用户组权限
		vUser := fmt.Sprintf("user_%d", m.UserId)
		vRole := fmt.Sprintf("role_%d", roleId)
		// 如果用户角色已存在则添加时返回false)
		casbin.Enforcer.AddRoleForUser(vUser, vRole)
		// 获取角色对应权限项并赋予给用户
		adminRoleService := admin_role_service.AdminRole{
			RoleId: roleId,
		}
		adminRolePermissionList := adminRoleService.GetPermission()
		for _, value := range adminRolePermissionList {
			// 添加用户权限项(如果权限项已存在则添加时会返回false)
			if len(value) > 2 {
				casbin.Enforcer.AddPermissionForUser(vUser, value[1], value[2])
			} else {
				casbin.Enforcer.AddPermissionForUser(vUser, value[1])
			}
		}
	}
}

// 获取用户角色
func (m AdminUser) GetRole() ([]string, error) {
	vUser := fmt.Sprintf("user_%d", m.UserId)
	return casbin.Enforcer.GetRolesForUser(vUser)
}

// 设置用户权限（仅可设置角色组已存在的权限规则）
func (m AdminUser) SetPermission() error {
	adminRuleList, err := models.AdminRule{}.FindByRuleIds(m.RuleIds)
	if err != nil {
		return err
	}
	if len(adminRuleList) > 0 {
		vUser := fmt.Sprintf("user_%d", m.UserId)
		// 清空之前设置的权限
		casbin.Enforcer.DeletePermissionsForUser(vUser)
		for _, value := range adminRuleList {
			// 添加用户权限
			casbin.Enforcer.AddPermissionForUser(vUser, value.RuleCode, value.Method)
		}
	}
	return nil
}

// 获取用户权限（仅获取用户权限，不包含角色组权限）
func (m AdminUser) GetPermission() [][]string {
	vUser := fmt.Sprintf("user_%d", m.UserId)
	return casbin.Enforcer.GetPermissionsForUser(vUser)
}
