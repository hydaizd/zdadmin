package models

import (
	"fmt"
	"github.com/hydaizd/zdadmin/pkg/setting"
	"github.com/jinzhu/gorm"
	"log"
	"regexp"
	"time"
)

var DB *gorm.DB

type Model struct {
	CreatedAT time.Duration `json:"created_at"`
	UpdatedAT time.Duration `json:"updated_at"`
}

// Setup initializes the database instance
func Setup() {
	var err error
	DB, err = gorm.Open(setting.DatabaseSetting.Type, fmt.Sprintf("%s:%s@tcp(%s)/%s?charset=utf8&parseTime=True&loc=Local",
		setting.DatabaseSetting.User,
		setting.DatabaseSetting.Password,
		setting.DatabaseSetting.Host,
		setting.DatabaseSetting.Name))

	if err != nil {
		log.Fatalf("model.Setup err: %v", err)
	}

	gorm.DefaultTableNameHandler = func(DB *gorm.DB, defaultTableName string) string {
		reg, _ := regexp.Compile(fmt.Sprintf("^%s", setting.DatabaseSetting.TablePrefix))
		// 排除不需要加前缀的表
		if defaultTableName == "casbin_rule" {
			return defaultTableName
		}
		if ok := reg.MatchString(defaultTableName); !ok {
			return setting.DatabaseSetting.TablePrefix + defaultTableName
		} else {
			return defaultTableName
		}
	}

	DB.SingularTable(true)
	DB.Callback().Create().Replace("gorm:update_time_stamp", updateTimeStampForCreateCallback)
	DB.Callback().Update().Replace("gorm:update_time_stamp", updateTimeStampForUpdateCallback)
	DB.DB().SetMaxIdleConns(10)
	DB.DB().SetMaxOpenConns(100)

	// 没有表，自动迁移表结构
	// fmt.Println(DB.AutoMigrate(new(User)).Error)
	// fmt.Println(DB.AutoMigrate(new(Profile)).Error)

	DB.LogMode(true)
}

// updateTimeStampForCreateCallback will set `CreatedOn`, `ModifiedOn` when creating
func updateTimeStampForCreateCallback(scope *gorm.Scope) {
	if !scope.HasError() {
		nowTime := time.Now().Unix()
		if createTimeField, ok := scope.FieldByName("CreatedAt"); ok {
			if createTimeField.IsBlank {
				_ = createTimeField.Set(nowTime)
			}
		}

		if modifyTimeField, ok := scope.FieldByName("UpdatedAt"); ok {
			if modifyTimeField.IsBlank {
				_ = modifyTimeField.Set(nowTime)
			}
		}
	}
}

// updateTimeStampForUpdateCallback will set `ModifiedOn` when updating
func updateTimeStampForUpdateCallback(scope *gorm.Scope) {
	if _, ok := scope.Get("gorm:update_column"); !ok {
		_ = scope.SetColumn("UpdatedAt", time.Now().Unix())
	}
}
