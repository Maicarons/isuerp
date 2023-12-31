package logic

import (
	"context"

	"api/internal/svc"
	"api/internal/types"

	"github.com/zeromicro/go-zero/core/logx"
)

type InventoryActionLogic struct {
	logx.Logger
	ctx    context.Context
	svcCtx *svc.ServiceContext
}

func NewInventoryActionLogic(ctx context.Context, svcCtx *svc.ServiceContext) *InventoryActionLogic {
	return &InventoryActionLogic{
		Logger: logx.WithContext(ctx),
		ctx:    ctx,
		svcCtx: svcCtx,
	}
}

func (l *InventoryActionLogic) InventoryAction(req *types.InventoryActionReq) (resp *types.InventoryActionResp, err error) {
	// todo: add your logic here and delete this line

	return
}
