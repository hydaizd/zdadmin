package admin_menu_service

import (
	"github.com/hydaizd/zdadmin/models"
	"github.com/hydaizd/zdadmin/service/oplog_service"
)

type AdminMenu struct {
	ParentId    int
	MenuName    string
	MenuUri     string
	LoginUserId int
}

// 创建菜单
func (m AdminMenu) Create() error {
	newAdminMenu := &models.AdminMenu{
		ParentId: m.ParentId,
		MenuName: m.MenuName,
		MenuUri:  m.MenuUri,
	}
	err := models.AdminMenu{}.Create(newAdminMenu)

	// 添加操作日志
	_ = oplog_service.OpLog{
		OpTable:   "admin_menu",
		OpAction:  "create",
		CommonId:  newAdminMenu.MenuId,
		CreatedBy: m.LoginUserId,
	}.Create()

	return err
}
