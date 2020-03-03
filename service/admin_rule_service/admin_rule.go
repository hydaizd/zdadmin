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
func (m AdminRule) Create(adminRule *models.AdminRule) error {
	err := models.AdminRule{}.Create(adminRule)

	if err != nil {
		return err
	}

	// 添加操作日志
	opLog := models.OpLog{
		OpTable:   "admin_rule",
		OpAction:  "create",
		CommonId:  adminRule.RuleId,
		CreatedBy: m.LoginUserId,
	}
	_ = oplog_service.OpLog{}.Create(&opLog)

	return nil
}
