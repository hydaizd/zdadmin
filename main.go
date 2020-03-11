package main

import (
	"fmt"
	"github.com/gin-gonic/gin"
	_ "github.com/hydaizd/zdadmin/docs"
	"github.com/hydaizd/zdadmin/models"
	"github.com/hydaizd/zdadmin/pkg/casbin"
	"github.com/hydaizd/zdadmin/pkg/setting"
	"github.com/hydaizd/zdadmin/routers"
	"golang.org/x/sync/errgroup"
	"log"
	"net/http"
)

var (
	g errgroup.Group
)

func init() {
	setting.Setup()
	models.Setup()
	casbin.Setup()
}

// @title zdadmin
// @version 1.0
// @description zdadmin接口服务
// @host localhost:8888
// @BasePath /api/v1
// @securityDefinitions.apikey ApiKeyAuth
// @in header
// @name token
func main() {
	gin.SetMode(setting.ServerSetting.RunMode)

	routersInit := routers.InitRouter()
	readTimeout := setting.ServerSetting.ReadTimeout
	writeTimeout := setting.ServerSetting.WriteTimeout
	endPoint := fmt.Sprintf(":%d", setting.ServerSetting.HttpPort)
	maxHeaderBytes := 1 << 20

	server := &http.Server{
		Addr:           endPoint,
		Handler:        routersInit,
		ReadTimeout:    readTimeout,
		WriteTimeout:   writeTimeout,
		MaxHeaderBytes: maxHeaderBytes,
	}

	log.Printf("[info] start http server listening %s", endPoint)
	g.Go(func() error {
		return server.ListenAndServe()
	})
	if err := g.Wait(); err != nil {
		log.Fatal(err)
	}
}
