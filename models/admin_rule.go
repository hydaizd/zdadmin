package models

import (
	"github.com/jinzhu/gorm"
)

type AdminRule struct {
	Model
	RuleId   int    `json:"rule_id" gorm:"primary_key"` // 权限规则ID
	MenuId   int    `json:"menu_id"`                    // 菜单ID
	RuleName string `json:"rule_name"`                  // 权限规则名称
	RuleCode string `json:"rule_code"`                  // 权限规则编码
	Method   string `json:"method"`                     // 请求方式
}

func (AdminRule) Create(adminRule *AdminRule) error {
	if err := DB.Create(adminRule).Error; err != nil {
		return err
	}
	return nil
}

func (AdminRule) FindByRuleIds(ruleIds []int) ([]*AdminRule, error) {
	var adminRuleList []*AdminRule
	err := DB.Model(AdminRule{}).Where("rule_id in(?)", ruleIds).Find(&adminRuleList).Error
	if err != nil && err != gorm.ErrRecordNotFound {
		return nil, err
	}
	return adminRuleList, nil
}
