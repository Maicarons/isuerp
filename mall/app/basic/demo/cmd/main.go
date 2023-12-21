package main

import (
	"github.com/better-go/pkg/x/go-zero/cmd"

	"mall/app/basic/demo/internal/server"
)

func main() {
	// auto select:
	cmd.Runner(server.NewServerSelector())
}
