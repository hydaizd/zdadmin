package middleware

import (
	"github.com/gin-gonic/gin"
	"github.com/hydaizd/zdadmin/pkg/app"
	"github.com/hydaizd/zdadmin/pkg/jwt"
)

// SkipperFunc 定义中间件跳过函数
type SkipperFunc func(*gin.Context) bool

func JwtMiddleware(skipper ...SkipperFunc) gin.HandlerFunc {
	return func(c *gin.Context) {
		if len(skipper) > 0 && skipper[0](c) {
			c.Next()
			return
		}

		token := c.GetHeader("token")
		if token == "" {
			app.Fail(c, "没有登录")
			c.Abort()
			return
		}

		jwtObj := jwt.NewJWT()
		// customclaims, err := jwtObj.ParseToken(token)
		_, err := jwtObj.ParseToken(token)
		if err != nil {
			app.Fail(c, err.Error())
			c.Abort()
			return
		}
		c.Next()
	}
}

// AllowPathPrefixSkipper 检查请求路径是否包含指定的前缀，如果包含则跳过
func AllowPathPrefixSkipper(prefixes ...string) SkipperFunc {
	return func(c *gin.Context) bool {
		path := c.Request.URL.Path
		pathLen := len(path)

		for _, p := range prefixes {
			if pl := len(p); pathLen >= pl && path[:pl] == p {
				return true
			}
		}
		return false
	}
}
