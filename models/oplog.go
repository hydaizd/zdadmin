package models

import (
	"time"
)

type OpLog struct {
	OpId      int           `json:"op_id"`      // 日志ID
	OpTable   string        `json:"op_table"`   // 操作表名(不包含前缀)
	OpAction  string        `json:"op_action"`  // 操作动作行为(create创建，update更新，delete删除，audit审查)
	CommonId  int           `json:"menu_uri"`   // 操作内容ID
	CreatedAT time.Duration `json:"created_at"` // 操作时间
	CreatedBy int           `json:"created_by"` // 操作人ID
}

func (OpLog) TableName() string {
	return "zd_admin_oplog"
}

func (OpLog) Create(opLog *OpLog) error {
	if err := DB.Create(opLog).Error; err != nil {
		return err
	}
	return nil
}
