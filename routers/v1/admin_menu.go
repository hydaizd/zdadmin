package v1

import (
	"github.com/gin-gonic/gin"
	"github.com/hydaizd/zdadmin/models"
	"github.com/hydaizd/zdadmin/pkg/app"
	"github.com/hydaizd/zdadmin/pkg/jwt"
	"github.com/hydaizd/zdadmin/service/admin_menu_service"
)

type AdminMenu struct {
}

// @Tags 管理后台菜单
// @Summary 创建菜单
// @Produce json
// @Accept multipart/form-data
// @Security ApiKeyAuth
// @Param parent_id formData int false "父菜单ID"
// @Param menu_name formData string true "菜单名称"
// @Param menu_uri formData string true "菜单访问地址"
// @Success 200 {object} app.Response
// @Failure 500 {object} app.Response
// @Router /adminmenu/create [post]
func (AdminMenu) Create(c *gin.Context) {
	type Form struct {
		ParentId int    `form:"parent_id"`
		MenuName string `form:"menu_name" binding:"required"`
		MenuUri  string `form:"menu_uri" binding:"required"`
	}
	form := Form{}
	if err := c.ShouldBind(&form); err != nil {
		app.Fail(c, err.Error())
		return
	}
	loginUserId := jwt.GetUserId(c)

	adminMenuService := admin_menu_service.AdminMenu{
		LoginUserId: loginUserId,
	}
	adminMenu := models.AdminMenu{
		ParentId: form.ParentId,
		MenuName: form.MenuName,
		MenuUri:  form.MenuUri,
	}

	if err := adminMenuService.Create(&adminMenu); err != nil {
		app.Fail(c, err.Error())
		return
	}
	app.Success(c)
}
