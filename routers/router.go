package routers

import (
	"github.com/gin-gonic/gin"
	"github.com/hydaizd/zdadmin/middleware"
	"github.com/hydaizd/zdadmin/routers/v1"
	"github.com/swaggo/gin-swagger"
	"github.com/swaggo/gin-swagger/swaggerFiles"
)

func InitRouter() *gin.Engine {
	// 获取router路由对象
	r := gin.New()
	r.Use(gin.Logger()) // 使用日志中间件
	r.GET("/swagger/*any", ginSwagger.WrapHandler(swaggerFiles.Handler))

	// 登陆验证过滤
	notCheckLoginList := getNotCheckLoginList()
	// 使用自定义拦截器中间件
	r.Use(middleware.JwtMiddleware(
		middleware.AllowPathPrefixSkipper(notCheckLoginList...),
	))

	// 权限验证过滤
	notCheckPermissionList := getNotCheckPermissionList()
	r.Use(middleware.CasbinMiddleware(
		middleware.AllowPathPrefixSkipper(notCheckPermissionList...),
	))

	apiV1 := r.Group("/api/v1")
	{
		// 后台角色
		adminRole := v1.AdminRole{}
		apiV1.POST("/adminrole/create", adminRole.Create)
		apiV1.POST("/adminrole/update", adminRole.Update)
		apiV1.POST("/adminrole/setPermission", adminRole.SetPermission)
		apiV1.GET("/adminrole/getPermission", adminRole.GetPermission)

		// 后台菜单
		adminMenu := v1.AdminMenu{}
		apiV1.POST("/adminmenu/create", adminMenu.Create)

		// 权限规则
		adminRule := v1.AdminRule{}
		apiV1.POST("/adminrule/create", adminRule.Create)

		// 后台用户
		adminUser := v1.AdminUser{}
		apiV1.POST("/adminuser/create", adminUser.Create)
		apiV1.POST("/adminuser/login", adminUser.Login)
		apiV1.POST("/adminuser/setRole", adminUser.SetRole)
		apiV1.GET("/adminuser/getRole", adminUser.GetRole)
		apiV1.POST("/adminuser/setPermission", adminUser.SetPermission)
		apiV1.GET("/adminuser/getPermission", adminUser.GetPermission)
	}

	return r
}

func getNotCheckLoginList() []string {
	apiPrefix := "/api"
	apiV1 := apiPrefix + "/v1"
	return []string{
		apiV1 + "/adminuser/login",
	}
}

func getNotCheckPermissionList() []string {
	// apiPrefix := "/api"
	// apiV1 := apiPrefix + "/v1"

	notCheckPermissionList := []string{
		// apiV1 + "/menu/menuButtonList",
	}
	notCheckLoginList := getNotCheckLoginList()
	return append(notCheckPermissionList, notCheckLoginList...)
}
