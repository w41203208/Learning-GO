// func main() {
// 	fmt.Println("start")
// 	testMap := make(map[string]bool)

// 	// SigCh := make(chan int)
// 	wait := sync.WaitGroup{}
// 	// mutex := sync.Mutex{}

// 	for i := 0; i < 3; i++ {
// 		id := "test1"
// 		wait.Add(1)

// 		go func(a string) {
// 			for testMap[id] == true {
// 			}
// 			if testMap[id] != true {

// 				testMap[id] = true
// 			}

// 			fmt.Println("start ", a)
// 			defer func() {
// 				fmt.Println("end ", a)
// 				testMap[a] = false
// 				wait.Done()
// 			}()

// 		}(id)
// 	}
// 	// go func() {
// 	// 	SigCh <- 1
// 	// 	time.Sleep(2 * time.Second)
// 	// 	SigCh <- 2
// 	// 	time.Sleep(100 * time.Second)
// 	// 	SigCh <- 3
// 	// }()

// 	wait.Wait()
// 	fmt.Println("end")
// }
package main

import (
	"context"
	"log"
	"math/rand"
	"sync"
	"time"
)

func timetest() {
	now := time.Now()
	now2 := now.Add(-1 * time.Hour)
	log.Println(now.Before(now2))
}

func testByte(i byte) {
	log.Println(i)
}

func main() {
	testByte(':')

	t := time.Now().Unix()
	r1 := rand.New(rand.NewSource(t))

	parentCtx := context.Background()
	getCh := make(chan int)

	wait := &sync.WaitGroup{}
	wait.Add(1)
	go func() {
		defer wait.Done()
		for {
			select {
			case <-parentCtx.Done():
				log.Println("closed")
				return
			case v := <-getCh:
				log.Println(v)
			}
		}
	}()
	_, cancelCtx := context.WithCancel(parentCtx)

	for {
		v := r1.Intn(10)
		if v > 7 {
			cancelCtx()
			break
		} else {
			getCh <- v
		}
		time.Sleep(2 * time.Second)
	}

	wait.Wait()

	log.Println("End")

	// timetest()
}
