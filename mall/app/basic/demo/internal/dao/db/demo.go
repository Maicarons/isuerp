package db

import (
    "github.com/better-go/pkg/log"

    "mall/app/basic/demo/proto/config"
)

// 极光推送 API 对接:
type DemoDB struct {
}

func newDemoDB(cfg *config.DBUnit) *DemoDB {

    return &DemoDB{
    }
}

func (m *DemoDB) Hello(message string) error {
    log.Debugf("demo.Hello done, req=%+v", message)
    return nil
}
