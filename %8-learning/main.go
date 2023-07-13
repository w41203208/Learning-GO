package main

import (
	"fmt"
	"unsafe"
)

func main() {
	num := [3]uint32{32, 12, 50}
	fmt.Println(&num)
	fmt.Println(&num[0])
	fmt.Println(uintptr(unsafe.Pointer(&num))%8)
}