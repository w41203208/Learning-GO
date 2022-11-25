package main

import (
	"fmt"

	greet "testc2go/greet"
)

func main() {
	// fmt.Println("string test -----------------------")
	// CHello := &C.Hello{}
	// CHello.str = C.CString("Hello C2GO")
	// C.SayHello(CHello)
	// C.GreetInit(C.CString("Hello C2GO"))
	// // fmt.Println(*(*int)(test))

	// fmt.Println("another test -----------------------")

	// var tt = 1
	// C.PrintArray((*C.int)(unsafe.Pointer(&tt)))

	// fmt.Println(tt)
	fmt.Println("another11 test -----------------------")

	gt := greet.NewGreet("Hello Greeting Test!")
	fmt.Println(gt)
	gt.SayGreet()
}
