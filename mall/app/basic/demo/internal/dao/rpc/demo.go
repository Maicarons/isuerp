package rpc

import (
    "mall/app/basic/demo/proto/config"

    "github.com/better-go/pkg/log"
)

// 极光推送 API 对接:
type DemoRpc struct {
}

func newDemoRpc(cfg *config.RpcUnit) *DemoRpc {

    return &DemoRpc{
    }
}

func (m *DemoRpc) Hello(message string) error {
    log.Debugf("demo.Hello done, req=%+v", message)
    return nil
}
