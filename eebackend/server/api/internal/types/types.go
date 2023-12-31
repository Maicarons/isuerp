// Code generated by goctl. DO NOT EDIT.
package types

type InventoryActionReq struct {
	InventoryID string `json:"inventory_id"`
	Action      string `json:"action"` // 操作类型，如"增加"、"减少"
}

type InventoryActionResp struct {
	Success bool   `json:"success"`
	Message string `json:"message"` // 操作结果的描述信息
}

type OrderActionReq struct {
	OrderID string `json:"order_id"`
	Action  string `json:"action"` // 操作类型，如"创建"、"取消"、"完成"
}

type OrderActionResp struct {
	Success bool   `json:"success"`
	Message string `json:"message"` // 操作结果的描述信息
}

type ProductActionReq struct {
	ProductID string `json:"product_id"`
	Action    string `json:"action"` // 操作类型，如"添加"、"更新"、"删除"
}

type ProductActionResp struct {
	Success bool   `json:"success"`
	Message string `json:"message"` // 操作结果的描述信息
}

type SystemSettingActionReq struct {
	SettingID string `json:"setting_id"`
	Action    string `json:"action"` // 操作类型，如"修改"、"查询"
}

type SystemSettingActionResp struct {
	Success bool   `json:"success"`
	Message string `json:"message"` // 操作结果的描述信息
}
