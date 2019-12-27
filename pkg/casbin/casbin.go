package casbin

import (
	"fmt"
	"github.com/casbin/casbin"
	"github.com/casbin/gorm-adapter"
	"github.com/gin-gonic/gin"
	_ "github.com/go-sql-driver/mysql"
	"github.com/hydaizd/zdadmin/pkg/setting"
	"strings"
)

var Enforcer *casbin.Enforcer

func Setup() {
	dbType := setting.DatabaseSetting.Type
	dbUser := setting.DatabaseSetting.User
	dbPassword := setting.DatabaseSetting.Password
	dbName := setting.DatabaseSetting.Name
	dbHost := setting.DatabaseSetting.Host
	dns := fmt.Sprintf("%s:%s@tcp(%s)/%s", dbUser, dbPassword, dbHost, dbName)

	a := gormadapter.NewAdapter(dbType, dns, true)
	Enforcer = casbin.NewEnforcer("conf/acl_model.conf", a)
	// 从DB加载策略
	_ = Enforcer.LoadPolicy()
}

// 检测用户地址访问权限
func CheckUserUriPermission(c *gin.Context, userId int) bool {
	obj := strings.TrimPrefix(c.Request.URL.RequestURI(), "/api/v1") // 获取请求的URI
	act := c.Request.Method                                          // 获取请求方法
	sub := fmt.Sprintf("user_%d", userId)                            // 获取用户的角色
	fmt.Println([]string{sub, obj, act})
	ok, err := Enforcer.EnforceSafe(sub, obj, act)
	fmt.Println(err, ok)
	return ok
}
