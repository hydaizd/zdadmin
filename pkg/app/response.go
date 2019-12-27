package app

import (
	"github.com/gin-gonic/gin"
	"net/http"
)

type Gin struct {
	C *gin.Context
}

type Response struct {
	ErrorCode int         `json:"error_code"` // 错误代码
	ErrorMsg  string      `json:"error_msg"`  // 错误信息
	Data      interface{} `json:"data"`       // 返回数据
}

func Success(c *gin.Context, data ...interface{}) {
	response := &Response{
		ErrorCode: 0,
		ErrorMsg:  "ok",
		Data:      nil,
	}
	if len(data) == 1 {
		response.Data = data[0]
	}
	c.JSON(http.StatusOK, response)
	return
}

func Fail(c *gin.Context, msg string, data ...interface{}) {
	response := &Response{
		ErrorCode: 1,
		ErrorMsg:  msg,
		Data:      data,
	}
	c.JSON(http.StatusOK, response)
	return
}
