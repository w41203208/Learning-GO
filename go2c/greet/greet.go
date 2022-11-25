package greet

/*
#include "greet.h"
*/
import "C"
import (
	"fmt"
)

type Greet struct {
	greet *C.Greet
}

func NewGreet(str string) *Greet {
	gt := new(Greet)
	gt.greet = C.GreetInit(C.CString(str))
	return gt
}

func (g *Greet) SayGreet() {
	fmt.Println(C.GoString(C.GreetString(g.greet)))
}

// func SayGreet(gt *Greet) {
// 	C.SayGreet(gt)
// }
