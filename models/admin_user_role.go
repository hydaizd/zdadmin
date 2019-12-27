package models

type AdminUserRole struct {
	Model
	UserId int `json:"user_id"` // 用户ID
	RoleId int `json:"role_id"` // 角色ID
}

func (AdminUserRole) Create(adminUserRole *AdminUserRole) error {
	if err := DB.Create(adminUserRole).Error; err != nil {
		return err
	}
	return nil
}
