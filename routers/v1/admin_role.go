package v1

import (
	"github.com/gin-gonic/gin"
	"github.com/hydaizd/zdadmin/pkg/app"
	"github.com/hydaizd/zdadmin/pkg/jwt"
	"github.com/hydaizd/zdadmin/service/admin_role_service"
)

type AdminRole struct {
}

// @Tags 管理后台角色
// @Summary 创建角色
// @Produce json
// @Accept multipart/form-data
// @Security ApiKeyAuth
// @Param role_name formData string true "角色名"
// @Success 200 {object} app.Response
// @Failure 500 {object} app.Response
// @Router /adminrole/create [post]
func (AdminRole) Create(c *gin.Context) {
	type Form struct {
		RoleName string `form:"role_name" binding:"required"`
	}
	form := Form{}
	if err := c.ShouldBind(&form); err != nil {
		app.Fail(c, err.Error())
		return
	}
	loginUserId := jwt.GetUserId(c)
	adminRoleService := admin_role_service.AdminRole{
		RoleName:    form.RoleName,
		LoginUserId: loginUserId,
	}
	if err := adminRoleService.Create(); err != nil {
		app.Fail(c, err.Error())
		return
	}
	app.Success(c)
}

// @Tags 管理后台角色
// @Summary 设置角色权限
// @Produce json
// @Accept multipart/form-data
// @Security ApiKeyAuth
// @Param role_id formData int true "角色ID"
// @Param rule_ids formData []int true "权限规则ID集"
// @Success 200 {object} app.Response
// @Failure 500 {object} app.Response
// @Router /adminrole/setPermission [post]
func (AdminRole) SetPermission(c *gin.Context) {
	type Form struct {
		RoleId  int   `form:"role_id" binding:"required"`
		RuleIds []int `form:"rule_ids[]" binding:"required"`
	}
	form := Form{}
	if err := c.ShouldBind(&form); err != nil {
		app.Fail(c, err.Error())
		return
	}
	adminRoleService := admin_role_service.AdminRole{
		RoleId:  form.RoleId,
		RuleIds: form.RuleIds,
	}
	if err := adminRoleService.SetPermission(); err != nil {
		app.Fail(c, err.Error())
		return
	}
	app.Success(c)
}

// @Tags 管理后台角色
// @Summary 获取角色权限
// @Produce json
// @Security ApiKeyAuth
// @Param role_id query int true "角色ID"
// @Success 200 {object} app.Response
// @Failure 500 {object} app.Response
// @Router /adminrole/getPermission [get]
func (AdminRole) GetPermission(c *gin.Context) {
	type Form struct {
		RoleId int `form:"role_id" binding:"required"`
	}
	form := Form{}
	if err := c.ShouldBind(&form); err != nil {
		app.Fail(c, err.Error())
		return
	}
	adminRoleService := admin_role_service.AdminRole{
		RoleId: form.RoleId,
	}
	adminUserRoleList := adminRoleService.GetPermission()
	app.Success(c, adminUserRoleList)
}
