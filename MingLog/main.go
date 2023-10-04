package main

import "log"

// import xlog "xlog/pkg/log"

func main() {
	// xlog := xlog.NewXLog(xlog.SetCodeDetail(true))
	var a uint8 = 2

	log.Println(^a)
}
