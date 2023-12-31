package logic

import (
	"context"

	"api/internal/svc"
	"api/internal/types"

	"github.com/zeromicro/go-zero/core/logx"
)

type ProductActionLogic struct {
	logx.Logger
	ctx    context.Context
	svcCtx *svc.ServiceContext
}

func NewProductActionLogic(ctx context.Context, svcCtx *svc.ServiceContext) *ProductActionLogic {
	return &ProductActionLogic{
		Logger: logx.WithContext(ctx),
		ctx:    ctx,
		svcCtx: svcCtx,
	}
}

func (l *ProductActionLogic) ProductAction(req *types.ProductActionReq) (resp *types.ProductActionResp, err error) {
	// todo: add your logic here and delete this line

	return
}
