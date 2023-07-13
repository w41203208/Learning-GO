// package main

// import (
// 	"fmt"
// 	"sync"
// )

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
	"fmt"
	"sync"
	"sync/atomic"
)

var counter int64
var mutex sync.Mutex

func increment() {
	atomic.AddInt64(&counter, 1)
}

func safeIncrement() {
	mutex.Lock()
	counter++
	mutex.Unlock()
}

func main() {
	var wg sync.WaitGroup
	wg.Add(2)

	go func() {
		defer wg.Done()
		for i := 0; i < 1000; i++ {
			increment()
		}
	}()

	go func() {
		defer wg.Done()
		for i := 0; i < 1000; i++ {
			safeIncrement()
		}
	}()

	wg.Wait()

	fmt.Println("Counter:", counter)
}
