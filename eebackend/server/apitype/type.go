package apitype

type T struct {
	OrderId    string `json:"order_id"`
	CustomerId string `json:"customer_id"`
	Items      []struct {
		ProductId string `json:"product_id"`
		Quantity  int    `json:"quantity"`
	} `json:"items"`
	TotalPrice float64 `json:"total_price"`
	Status     string  `json:"status"`
}
type T2 struct {
	ProductId         string `json:"product_id"`
	AvailableQuantity int    `json:"available_quantity"`
	ReservedQuantity  int    `json:"reserved_quantity"`
}
type T3 struct {
	ProductId   string  `json:"product_id"`
	Name        string  `json:"name"`
	Price       float64 `json:"price"`
	Description string  `json:"description"`
}

const (
	Status = iota
	StatusSuccess
)
