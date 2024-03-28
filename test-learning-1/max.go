package main

func Max(a, b int) int {
	if a > b {
		return a
	}
	return b
}

func F(a, b int) {
	if Max(a, b) == b {
		panic(b)
	}
}
