package admin_rule_service

import (
	"github.com/hydaizd/zdadmin/models"
	"github.com/hydaizd/zdadmin/service/oplog_service"
)

type AdminRule struct {
	MenuId      int
	RuleName    string
	RuleCode    string
	Method      string
	LoginUserId int
}

// 创建权限规则
func (m AdminRule) Create() error {
	newAdminRule := &models.AdminRule{
		MenuId:   m.MenuId,
		RuleName: m.RuleName,
		RuleCode: m.RuleCode,
		Method:   m.Method,
	}
	err := models.AdminRule{}.Create(newAdminRule)

	// 添加操作日志
	_ = oplog_service.OpLog{
		OpTable:   "admin_rule",
		OpAction:  "create",
		CommonId:  newAdminRule.RuleId,
		CreatedBy: m.LoginUserId,
	}.Create()

	return err
}
