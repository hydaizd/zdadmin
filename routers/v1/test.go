package v1

import (
	"github.com/gin-gonic/gin"
	"github.com/hydaizd/zdadmin/models"
	"github.com/hydaizd/zdadmin/pkg/app"
	"io/ioutil"
	"path/filepath"
	"strings"
)

type Test struct {
}

func (m Test) RunSql(c *gin.Context) {
	sqlFile, err := filepath.Abs("./sql/casbin_rule.sql")
	if err != nil {
		app.Fail(c, "初始化失败")
		return
	}

	file, err := ioutil.ReadFile(sqlFile)
	if err != nil {
		app.Fail(c, "初始化失败")
		return
	}
	lines := strings.Split(string(file), "\r")
	tx := models.DB.Begin()
	for _, sql := range lines {
		if sql != "" {
			if err := tx.Exec(sql).Error; err != nil {
				tx.Rollback()
				app.Fail(c, "初始化失败")
				return
			}
		}
	}
	if err := tx.Commit().Error; err != nil {
		app.Fail(c, "初始化失败")
		return
	}
	app.Success(c, "ok")
}
