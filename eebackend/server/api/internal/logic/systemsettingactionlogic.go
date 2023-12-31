package logic

import (
	"context"

	"api/internal/svc"
	"api/internal/types"

	"github.com/zeromicro/go-zero/core/logx"
)

type SystemSettingActionLogic struct {
	logx.Logger
	ctx    context.Context
	svcCtx *svc.ServiceContext
}

func NewSystemSettingActionLogic(ctx context.Context, svcCtx *svc.ServiceContext) *SystemSettingActionLogic {
	return &SystemSettingActionLogic{
		Logger: logx.WithContext(ctx),
		ctx:    ctx,
		svcCtx: svcCtx,
	}
}

func (l *SystemSettingActionLogic) SystemSettingAction(req *types.SystemSettingActionReq) (resp *types.SystemSettingActionResp, err error) {
	// todo: add your logic here and delete this line

	return
}
