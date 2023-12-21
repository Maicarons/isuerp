package mq

import (
    "github.com/better-go/pkg/log"

    "mall/app/basic/demo/proto/config"
)

// 极光推送 API 对接:
type DemoMQ struct {
}

func newDemoMQ(cfg *config.MQUnit) *DemoMQ {

    return &DemoMQ{
    }
}

func (m *DemoMQ) Hello(message string) error {
    log.Debugf("demo.Hello done, req=%+v", message)
    return nil
}
