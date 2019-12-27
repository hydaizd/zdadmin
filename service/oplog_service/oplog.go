package oplog_service

import (
	"github.com/hydaizd/zdadmin/models"
)

type OpLog struct {
	OpTable   string
	OpAction  string
	CommonId  int
	CreatedBy int
}

// 创建操作日志
func (m OpLog) Create() error {
	opLog := &models.OpLog{
		OpTable:   m.OpTable,
		OpAction:  m.OpAction,
		CommonId:  m.CommonId,
		CreatedBy: m.CreatedBy,
	}
	return models.OpLog{}.Create(opLog)
}
