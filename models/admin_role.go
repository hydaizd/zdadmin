package models

import "github.com/jinzhu/gorm"

type AdminRole struct {
	Model
	RoleId   int    `json:"role_id" gorm:"primary_key"` // 角色ID
	RoleName string `json:"role_name"`                  // 角色名称
}

func (AdminRole) Create(adminRole *AdminRole) error {
	if err := DB.Create(adminRole).Error; err != nil {
		return err
	}
	return nil
}

func (AdminRole) FindByRoleName(roleName string) (*AdminRole, error) {
	adminRole := &AdminRole{}
	err := DB.Model(AdminRole{}).Where("role_name = ?", roleName).First(adminRole).Error
	if err != nil && err != gorm.ErrRecordNotFound {
		return nil, err
	}
	return adminRole, nil
}
