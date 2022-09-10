package main

import "fmt"

func testA() *int {
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

func main() {
	B := 6
	var test *int
	fmt.Println("1&B:", &B)

	fmt.Println("1&test:", test)
	test = testA()
	fmt.Println("5&test:", test)
	fmt.Println(*test)
}