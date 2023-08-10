package main

import (
	"context"
	"net"
)

func main() {
	//Test1()
	Test2()
	// s := &singleflight.Group{}
}
func Test2() {
	ctx := context.Background()

	d := &net.Resolver{}
	d.LookupIPAddr(ctx, "10.5.3.195")
}
