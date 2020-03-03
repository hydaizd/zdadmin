package admin_menu_service

import (
	"github.com/hydaizd/zdadmin/models"
	"github.com/hydaizd/zdadmin/service/oplog_service"
)

type AdminMenu struct {
	LoginUserId int
}

// 创建菜单
func (m AdminMenu) Create(adminMenu *models.AdminMenu) error {
	err := models.AdminMenu{}.Create(adminMenu)
	if err != nil {
		return err
	}

	// 添加操作日志
	opLog := models.OpLog{
		OpTable:   "admin_menu",
		OpAction:  "create",
		CommonId:  adminMenu.MenuId,
		CreatedBy: m.LoginUserId,
	}
	_ = oplog_service.OpLog{}.Create(&opLog)

	return nil
}
