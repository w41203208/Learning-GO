package main

import xlog "xlog/pkg/log"

func main() {
	xlog := xlog.NewXLog()

	xlog.LogTrace("test")
}
