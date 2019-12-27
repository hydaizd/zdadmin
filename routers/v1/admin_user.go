package v1

import (
	"github.com/gin-gonic/gin"
	"github.com/hydaizd/zdadmin/pkg/app"
	"github.com/hydaizd/zdadmin/pkg/jwt"
	"github.com/hydaizd/zdadmin/service/admin_user_service"
)

type AdminUser struct {
}

// @Tags 管理后台用户
// @Summary 用户登录
// @Produce json
// @Accept multipart/form-data
// @Param username formData string true "登录账户名"
// @Param password formData string true "登录密码"
// @Success 200 {object} app.Response
// @Failure 500 {object} app.Response
// @Router /adminuser/login [post]
func (AdminUser) Login(c *gin.Context) {
	type Form struct {
		Username string `form:"username" binding:"required"`
		Password string `form:"password" binding:"required"`
	}
	form := Form{}
	if err := c.ShouldBind(&form); err != nil {
		app.Fail(c, err.Error())
		return
	}
	adminUserService := admin_user_service.AdminUser{
		Username: form.Username,
		Password: form.Password,
	}
	token, err := adminUserService.Login()
	if err != nil {
		app.Fail(c, err.Error())
		return
	}
	app.Success(c, map[string]interface{}{
		"token": token,
	})
}

// @Tags 管理后台用户
// @Summary 创建用户
// @Produce json
// @Accept multipart/form-data
// @Security ApiKeyAuth
// @Param username formData string true "登录账户名"
// @Param password formData string true "登录密码"
// @Param real_name formData string true "真实姓名"
// @Param phone formData string false "手机号码"
// @Param email formData string false "邮箱地址"
// @Success 200 {object} app.Response
// @Failure 500 {object} app.Response
// @Router /adminuser/create [post]
func (AdminUser) Create(c *gin.Context) {
	type Form struct {
		Username string `form:"username" binding:"required"`
		Password string `form:"password" binding:"required"`
		RealName string `form:"real_name" binding:"required"`
		Phone    string `form:"phone"`
		Email    string `form:"email"`
	}
	form := Form{}
	if err := c.ShouldBind(&form); err != nil {
		app.Fail(c, err.Error())
		return
	}
	loginUserId := jwt.GetUserId(c)
	adminUserService := admin_user_service.AdminUser{
		Username:    form.Username,
		Password:    form.Password,
		RealName:    form.RealName,
		Phone:       form.Phone,
		Email:       form.Email,
		LoginUserId: loginUserId,
	}
	if err := adminUserService.Create(); err != nil {
		app.Fail(c, err.Error())
		return
	}
	app.Success(c)
}

// @Tags 管理后台用户
// @Summary 设置用户角色
// @Produce json
// @Accept multipart/form-data
// @Security ApiKeyAuth
// @Param user_id formData int true "用户ID"
// @Param role_ids formData []int true "角色ID集"
// @Success 200 {object} app.Response
// @Failure 500 {object} app.Response
// @Router /adminuser/setRole [post]
func (AdminUser) SetRole(c *gin.Context) {
	type Form struct {
		UserId  int   `form:"user_id" binding:"required"`
		RoleIds []int `form:"role_ids[]" binding:"required"`
	}
	form := Form{}
	if err := c.ShouldBind(&form); err != nil {
		app.Fail(c, err.Error())
		return
	}
	adminUserService := admin_user_service.AdminUser{
		UserId:  form.UserId,
		RoleIds: form.RoleIds,
	}
	adminUserService.SetRole()
	app.Success(c)
}

// @Tags 管理后台用户
// @Summary 获取用户角色
// @Produce json
// @Security ApiKeyAuth
// @Param user_id query int true "用户ID"
// @Success 200 {object} app.Response
// @Failure 500 {object} app.Response
// @Router /adminuser/getRole [get]
func (AdminUser) GetRole(c *gin.Context) {
	type Form struct {
		UserId int `form:"user_id" binding:"required"`
	}
	form := Form{}
	if err := c.ShouldBind(&form); err != nil {
		app.Fail(c, err.Error())
		return
	}
	adminUserService := admin_user_service.AdminUser{
		UserId: form.UserId,
	}
	adminUserRoleList, err := adminUserService.GetRole()
	if err != nil {
		app.Fail(c, err.Error())
		return
	}
	app.Success(c, adminUserRoleList)
}

// @Tags 管理后台用户
// @Summary 设置用户权限
// @Produce json
// @Accept multipart/form-data
// @Security ApiKeyAuth
// @Param user_id formData int true "角色ID"
// @Param rule_ids formData []int true "权限规则ID集"
// @Success 200 {object} app.Response
// @Failure 500 {object} app.Response
// @Router /adminuser/setPermission [post]
func (AdminUser) SetPermission(c *gin.Context) {
	type Form struct {
		UserId  int   `form:"user_id" binding:"required"`
		RuleIds []int `form:"rule_ids[]" binding:"required"`
	}
	form := Form{}
	if err := c.ShouldBind(&form); err != nil {
		app.Fail(c, err.Error())
		return
	}
	adminUserService := admin_user_service.AdminUser{
		UserId:  form.UserId,
		RuleIds: form.RuleIds,
	}
	if err := adminUserService.SetPermission(); err != nil {
		app.Fail(c, err.Error())
		return
	}
	app.Success(c)
}

// @Tags 管理后台用户
// @Summary 获取用户权限
// @Produce json
// @Security ApiKeyAuth
// @Param user_id query int true "用户ID"
// @Success 200 {object} app.Response
// @Failure 500 {object} app.Response
// @Router /adminuser/getPermission [get]
func (AdminUser) GetPermission(c *gin.Context) {
	type Form struct {
		UserId int `form:"user_id" binding:"required"`
	}
	form := Form{}
	if err := c.ShouldBind(&form); err != nil {
		app.Fail(c, err.Error())
		return
	}
	adminUserService := admin_user_service.AdminUser{
		UserId: form.UserId,
	}
	adminUserRuleList := adminUserService.GetPermission()
	app.Success(c, adminUserRuleList)
}
