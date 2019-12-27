package v1

import (
	"github.com/gin-gonic/gin"
	"github.com/hydaizd/zdadmin/pkg/app"
	"github.com/hydaizd/zdadmin/pkg/jwt"
	"github.com/hydaizd/zdadmin/service/admin_rule_service"
)

type AdminRule struct {
}

// @Tags 管理后台权限规则
// @Summary 添加权限规则
// @Produce  json
// @Accept multipart/form-data
// @Security ApiKeyAuth
// @Param menu_id formData int true "菜单ID"
// @Param rule_name formData string true "权限规则名称"
// @Param rule_code formData string true "权限规则编码"
// @Param method formData string true "请求方式(GET,POST)"
// @Success 200 {object} app.Response
// @Failure 500 {object} app.Response
// @Router /adminrule/create [post]
func (AdminRule) Create(c *gin.Context) {
	type Form struct {
		MenuId   int    `form:"menu_id" binding:"required"`
		RuleName string `form:"rule_name" binding:"required"`
		RuleCode string `form:"rule_code" binding:"required"`
		Method   string `form:"method" binding:"required"`
	}
	form := Form{}
	if err := c.ShouldBind(&form); err != nil {
		app.Fail(c, err.Error())
		return
	}
	loginUserId := jwt.GetUserId(c)
	adminRuleService := admin_rule_service.AdminRule{
		MenuId:      form.MenuId,
		RuleName:    form.RuleName,
		RuleCode:    form.RuleCode,
		Method:      form.Method,
		LoginUserId: loginUserId,
	}
	if err := adminRuleService.Create(); err != nil {
		app.Fail(c, err.Error())
		return
	}
	app.Success(c)
}

// func (m Rule) Create(c *gin.Context) {
// 	casbin.Enforcer.AddPolicy("admin", "/api/v1/hello", "GET")
// }
