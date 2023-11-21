package test

import (
	"fmt"
	"unsafe"
)
type stringStruct struct {
	str unsafe.Pointer
	len int
}

func PointerCompute(str string){
	// fmt.Print(str)
	// fmt.Print("\n")
	// st := *(*string)(unsafe.Pointer(uintptr(unsafe.Pointer(&str)) + 8))
	// fmt.Print(st)

	arr := []int32{1,2,3,4,5,6,8}
	// 這裡可以任意轉換 int32 to int8 int16 int32 int int64 來改變陣列內容，但是要小心位元的問題
	i := (*int32)(unsafe.Pointer(uintptr(unsafe.Pointer(&arr[0])) + unsafe.Sizeof(arr[0])))
	*i = 3
	fmt.Print(arr)
	fmt.Print("\n")
	fmt.Print(&arr[0])
	fmt.Print("\n")
	fmt.Print(&arr[1])
	fmt.Print("\n")
}

func MapArray(arr []int){
	for k, v := range arr{
		if v % 2 == 0{
			fmt.Printf("key:%d  value:%d \n", k, v)
		}
	}
}

