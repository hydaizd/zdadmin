package admin_role_service

import (
	"errors"
	"fmt"
	"github.com/hydaizd/zdadmin/models"
	"github.com/hydaizd/zdadmin/pkg/casbin"
	"github.com/hydaizd/zdadmin/service/oplog_service"
)

type AdminRole struct {
	LoginUserId int
}

// 创建角色
func (m AdminRole) Create(adminRole *models.AdminRole) error {
	// 判断角色名是否已存在
	oldAdminRole, err := models.AdminRole{}.FindByRoleName(adminRole.RoleName)
	if err != nil {
		return err
	}
	if oldAdminRole.RoleId > 0 {
		return errors.New("角色名已存在")
	}

	err = models.AdminRole{}.Create(adminRole)
	if err != nil {
		return err
	}

	// 添加操作日志
	opLog := models.OpLog{
		OpTable:   "admin_role",
		OpAction:  "create",
		CommonId:  adminRole.RoleId,
		CreatedBy: m.LoginUserId,
	}
	_ = oplog_service.OpLog{}.Create(&opLog)

	return nil
}

// 更新角色
func (m AdminRole) Update(roleId int, adminRole *models.AdminRole) error {
	// 判断角色名是否已存在
	oldAdminRole, err := models.AdminRole{}.FindByRoleName(adminRole.RoleName)
	if err != nil {
		return err
	}
	if oldAdminRole.RoleId > 0 && roleId != oldAdminRole.RoleId {
		return errors.New("角色名已存在")
	}

	err = models.AdminRole{}.Update(roleId, adminRole)
	if err != nil {
		return err
	}

	// 添加操作日志
	opLog := models.OpLog{
		OpTable:   "admin_role",
		OpAction:  "update",
		CommonId:  roleId,
		CreatedBy: m.LoginUserId,
	}
	_ = oplog_service.OpLog{}.Create(&opLog)

	return nil
}

// 设置角色权限
func (m AdminRole) SetPermission(roleId int, ruleIds []int) error {
	adminRuleList, err := models.AdminRule{}.FindByRuleIds(ruleIds)
	if err != nil {
		return err
	}
	if len(adminRuleList) > 0 {
		vRole := fmt.Sprintf("role_%d", roleId)
		// 删除指定角色所有权限规则
		casbin.Enforcer.RemoveFilteredGroupingPolicy(0, vRole)
		for _, value := range adminRuleList {
			// 添加组权限
			casbin.Enforcer.AddGroupingPolicy(vRole, value.RuleCode, value.Method)
		}
	}
	return nil
}

// 获取角色权限
/*
GetGroupingPolicy返回结果如下：
[
  "user_8",
  "role_2"
],
[
	"role_2",
	"/adminmenu/create"
	"POST"
],
*/
func (m AdminRole) GetPermission(roleId int) [][]string {
	vRole := fmt.Sprintf("role_%d", roleId)
	// 按指定角色过滤
	return casbin.Enforcer.GetFilteredGroupingPolicy(0, vRole)
}

// 检查角色是否有某个权限
func (m AdminRole) CheckPermission(roleId int, obj string) (bool, error) {
	vRole := fmt.Sprintf("role_%d", roleId)
	act := "GET"
	fmt.Println(vRole, act)
	ok := casbin.Enforcer.HasGroupingPolicy(vRole, obj, act)
	return ok, nil
}
