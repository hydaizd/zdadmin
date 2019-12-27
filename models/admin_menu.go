package models

type AdminMenu struct {
	Model
	MenuId   int    `json:"menu_id" gorm:"primary_key"` // 菜单ID
	ParentId int    `json:"parent_id"`                  // 父菜单ID
	MenuName string `json:"menu_name"`                  // 菜单名称
	MenuUri  string `json:"menu_uri"`                   // 菜单访问地址
}

func (AdminMenu) Create(adminMenu *AdminMenu) error {
	if err := DB.Create(adminMenu).Error; err != nil {
		return err
	}
	return nil
}
