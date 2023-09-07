package main

import (
	"fmt"

	// "rsc.io/quote"
)

/*
 *  1. uint to byte
 *  2. 二進制為何要 & 0xFF
 *  3. string to byte and byte to string
 */

/*
 *  1. unsafe.Pointer 將 pointer 轉換成沒型態的指標
 *
 */
func main() {
	// var stringBuffer bytes.Buffer
	// arr := []int{0,1,2,3,4,5,6,8,9,11,10,50}
	// test.MapArray(arr)



	var num int8 = 30

	fmt.Print(^num + 1)
	fmt.Print("\n")
	fmt.Print((num & 1) == 1)
	fmt.Print("\n")
	n := 2
	fmt.Print(num & ((1 << n) - 1))
	fmt.Print("\n")

	// str := "test"
	// test.PointerCompute(str)
	// strBuffer := util.NormalStringtoB(str)
	// fmt.Print(strBuffer)
	// fmt.Print("\n")

	// var a uint64 = 0x0102030405060708
	// fmt.Print(a)
	// fmt.Print("\n")
	// u := util.Ui64toB(a)
	// fmt.Print(u)
	// fmt.Print("\n")
	// h := util.BtoUi64(u)
	// fmt.Print(h)
	// fmt.Print("\n")
	// var c int = 1
	// var d int = 2
	// test.ExchangePtr(&c, &d)
	// fmt.Printf("%d %d\n", c, d)

	// var u uint64 = 0x1CFF
	// fmt.Print(u)
	// fmt.Print("\n")
	// a := util.Ui64toB(u)
	// fmt.Print(a)
	// fmt.Print("\n")

}
