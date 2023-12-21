package inner

import (
	"mall/app/basic/demo/internal/domain/demo"
	"mall/app/basic/demo/proto/config"
)

/*
	内部 RPC Server: 对内提供 gRPC API

*/

type Service struct {
	d *queue.Domain // 引入业务单元
}

func NewService(cfg config.Config) *Service {
	return &Service{
		d: queue.NewDomain(cfg, true),
	}
}

func (m *Service) Close() {
	m.d.Close()
}
