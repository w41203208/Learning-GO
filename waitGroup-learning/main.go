package main

import (
	"fmt"
	"sync"
	"time"
)

func main() {
	wait := &sync.WaitGroup{}
	ch := make(chan string)
	go func() {
		ch <- "Hello"
		time.Sleep(2 * time.Second)
		ch <- "World"
		close(ch)
	}()
	go func() {
		wait.Add(1)
		for message := range ch {
			fmt.Println(message)
		}
		defer wait.Done()
	}()

	fmt.Println("test")
	wait.Wait()
}
