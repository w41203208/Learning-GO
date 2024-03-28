package main

import "fmt"

func Sum(count int) int {
	numbers := make([]int, count)
	for i := range numbers {
		numbers[i] = i + 1
	}

	var sum int
	for _, i := range numbers {
		sum += i
	}
	return sum
}

func main() {
	answer := Sum(100)
	fmt.Println(answer)
}
