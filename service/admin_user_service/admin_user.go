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
	LoginUserId int
}

// 用户登录
func (m AdminUser) Login(username, password string) (string, error) {
	adminUser, err := models.AdminUser{}.FindByUsername(username)
	if err != nil {
		return "", err
	}
	if adminUser.UserId > 0 {
		// 进行密码验证
		if err := bcrypt.CompareHashAndPassword([]byte(adminUser.Password), []byte(password)); err != nil {
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
func (m AdminUser) Create(adminUser *models.AdminUser) error {
	// 判断账户名是否已被注册
	oldAdminUser, err := models.AdminUser{}.FindByUsername(adminUser.Username)
	if err != nil {
		return err
	}
	if oldAdminUser.UserId > 0 {
		return errors.New("账户名已被注册")
	}

	// 哈希处理用户输入的密码
	hashedPwd, err := bcrypt.GenerateFromPassword([]byte(adminUser.Password), bcrypt.DefaultCost)
	if err != nil {
		return err
	}
	adminUser.Password = string(hashedPwd)

	err = models.AdminUser{}.Create(adminUser)
	if err != nil {
		return err
	}

	// 添加操作日志
	opLog := models.OpLog{
		OpTable:   "admin_user",
		OpAction:  "create",
		CommonId:  adminUser.UserId,
		CreatedBy: m.LoginUserId,
	}
	_ = oplog_service.OpLog{}.Create(&opLog)

	return nil
}

// 设置用户角色
func (m AdminUser) SetRole(userId int, roleIds []int) {
	for _, roleId := range roleIds {
		// 添加用户组权限
		vUser := fmt.Sprintf("user_%d", userId)
		vRole := fmt.Sprintf("role_%d", roleId)
		// 如果用户角色已存在则添加时返回false)
		casbin.Enforcer.AddRoleForUser(vUser, vRole)
		// 获取角色对应权限项并赋予给用户
		adminRolePermissionList := admin_role_service.AdminRole{}.GetPermission(roleId)
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
func (m AdminUser) GetRole(userId int) ([]string, error) {
	vUser := fmt.Sprintf("user_%d", userId)
	return casbin.Enforcer.GetRolesForUser(vUser)
}

// 设置用户权限（仅可设置角色组已存在的权限规则）
func (m AdminUser) SetPermission(userId int, ruleIds []int) error {
	adminRuleList, err := models.AdminRule{}.FindByRuleIds(ruleIds)
	if err != nil {
		return err
	}
	if len(adminRuleList) > 0 {
		vUser := fmt.Sprintf("user_%d", userId)
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
func (m AdminUser) GetPermission(userId int) [][]string {
	vUser := fmt.Sprintf("user_%d", userId)
	return casbin.Enforcer.GetPermissionsForUser(vUser)
}
