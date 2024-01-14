package logic

import (
	"context"

	"api/internal/svc"
	"api/internal/types"

	"github.com/zeromicro/go-zero/core/logx"
)

type OrderActionLogic struct {
	logx.Logger
	ctx    context.Context
	svcCtx *svc.ServiceContext
}

func NewOrderActionLogic(ctx context.Context, svcCtx *svc.ServiceContext) *OrderActionLogic {
	return &OrderActionLogic{
		Logger: logx.WithContext(ctx),
		ctx:    ctx,
		svcCtx: svcCtx,
	}
}

func (l *OrderActionLogic) OrderAction(req *types.OrderActionReq) (resp *types.OrderActionResp, err error) {
	// todo: add your logic here and delete this line
	resp = &types.OrderActionResp{
		Message: "ok",
	}
	return
}
