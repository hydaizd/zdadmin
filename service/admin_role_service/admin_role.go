package admin_role_service

import (
	"errors"
	"fmt"
	"github.com/hydaizd/zdadmin/models"
	"github.com/hydaizd/zdadmin/pkg/casbin"
	"github.com/hydaizd/zdadmin/service/oplog_service"
)

type AdminRole struct {
	RoleId      int
	RoleName    string
	LoginUserId int
	RuleIds     []int
}

// 创建角色
func (m AdminRole) Create() error {
	// 判断角色名是否已存在
	adminRole, err := models.AdminRole{}.FindByRoleName(m.RoleName)
	if err != nil {
		return err
	}
	if adminRole.RoleId > 0 {
		return errors.New("角色名已存在")
	}

	newAdminRole := &models.AdminRole{
		RoleName: m.RoleName,
	}
	err = models.AdminRole{}.Create(newAdminRole)

	// 添加操作日志
	_ = oplog_service.OpLog{
		OpTable:   "admin_role",
		OpAction:  "create",
		CommonId:  newAdminRole.RoleId,
		CreatedBy: m.LoginUserId,
	}.Create()

	return err
}

// 设置角色权限
func (m AdminRole) SetPermission() error {
	adminRuleList, err := models.AdminRule{}.FindByRuleIds(m.RuleIds)
	if err != nil {
		return err
	}
	if len(adminRuleList) > 0 {
		vRole := fmt.Sprintf("role_%d", m.RoleId)
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
func (m AdminRole) GetPermission() [][]string {
	vRole := fmt.Sprintf("role_%d", m.RoleId)
	// 按指定角色过滤
	return casbin.Enforcer.GetFilteredGroupingPolicy(0, vRole)
}
