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
func (m OpLog) Create(opLog *models.OpLog) error {
	return models.OpLog{}.Create(opLog)
}
