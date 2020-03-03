package models

type AdminUserAddress struct {
	Model
	AddressId int    `json:"address_id" gorm:"primary_key"` // 自增ID，设置gorm:"primary_key"插入新记录可自动得到ID的值
	UserId    int    `json:"user_id"`                       // 关联用户ID
	Address   string `json:"address"`                       // 用户地址
}
