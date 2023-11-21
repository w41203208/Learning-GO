package noescape

import (
	"fmt"
	"math/rand"
)

func Increase() func() int {
	n := 0
	return func() int {
			n++
			return n
	}
}

func TestA() *int {
	A := 5
	var testlocal int
	var test int
	test = 5
	testlocal = 7
	fmt.Println("2&A:", &A)
	fmt.Println("3&testlocal:", &testlocal)
	fmt.Println("4&test:", &test)
	return &test
}

func Test() {
	// 逃逸分析 DEMO
	B := 6
	test := &B
	// interface類型：Println 因為參數使用 Interface{} 無法確定確切的型態，所以會逃逸
	fmt.Println("1&B:", &B)
	fmt.Println("1&test:", test)
	// 當函數返回區域變數記憶體位址
	test = TestA()
	fmt.Println("5&test:", test)
	fmt.Println(*test)
	// 閉包使用也會發生逃逸
	in := Increase()
  fmt.Println(in()) // 1
	// 變數大小不確定或是stack空間不足
	nums := make([]int, 1000000)
	for i := 0; i < len(nums); i++ {
		nums[i] = rand.Int()
	}
	number := 10
  s := make([]int, number)
  for i := 0; i < len(s); i++ {
      s[i] = i
  }
}

