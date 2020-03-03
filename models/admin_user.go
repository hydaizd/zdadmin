package models

import (
	"github.com/jinzhu/gorm"
	"time"
)

type AdminUser struct {
	Model
	UserId      int    `json:"user_id" gorm:"primary_key"` // 用户ID，设置gorm:"primary_key"插入新记录可自动得到ID的值
	Username    string `json:"username"`                   // 登录账户名
	Password    string `json:"-"`                          // 登录密码
	RealName    string `json:"real_name"`                  // 真实姓名
	Phone       string `json:"phone"`                      // 手机号码
	Email       string `json:"email"`                      // 邮箱地址
	LockedAt    time.Duration                              // 账户锁定时间
	AddressList []*AdminUserAddress `json:"address_list" gorm:"ForeignKey:UserId;AssociationForeignKey:UserId"`
}

func (AdminUser) Create(adminUser *AdminUser) error {
	if err := DB.Create(adminUser).Error; err != nil {
		return err
	}
	return nil
}

func (AdminUser) FindByUsername(username string) (*AdminUser, error) {
	adminUser := &AdminUser{}
	err := DB.Model(AdminUser{}).Where("username = ?", username).First(adminUser).Error
	if err != nil && err != gorm.ErrRecordNotFound {
		return nil, err
	}
	return adminUser, nil
}
