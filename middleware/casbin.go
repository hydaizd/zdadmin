package middleware

import (
	"fmt"
	"github.com/gin-gonic/gin"
	_ "github.com/go-sql-driver/mysql"
	"github.com/hydaizd/zdadmin/pkg/app"
	"github.com/hydaizd/zdadmin/pkg/casbin"
	"github.com/hydaizd/zdadmin/pkg/jwt"
)

func CasbinMiddleware(skipper ...SkipperFunc) gin.HandlerFunc {
	return func(c *gin.Context) {
		if len(skipper) > 0 && skipper[0](c) {
			c.Next()
			return
		}

		userId := jwt.GetUserId(c)
		if casbin.CheckUserUriPermission(c, userId) {
			fmt.Println("通过权限")
			c.Next()
		} else {
			app.Fail(c, "您没有权限访问")
			c.Abort()
		}
	}
}
