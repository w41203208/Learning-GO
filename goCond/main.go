package main

import (
	"fmt"
	"math/rand"
	"sync"
	"time"
)

func main() {
	c := sync.NewCond(&sync.Mutex{})
	var readyCnt int

	for i := 0; i < 10; i++ {
		go func(i int) {
			// 模擬熱身
			time.Sleep(time.Duration(rand.Int63n(10)) * time.Second)

			// 熱身結束，加鎖更改等待條件
			c.L.Lock()
			readyCnt++
			c.L.Unlock()

			fmt.Printf("運動員#%d 已準備就緒\n", i)
			c.Signal() // 示意裁判員
		}(i)
	}

	c.L.Lock()
	for readyCnt != 10 { // 每次 c.Signal() 都會喚醒一次，喚醒 10 次才能開始比賽
		c.Wait() // c.Wait() 調用後，會阻塞在這裏，直到被喚醒
		fmt.Printf("裁判員被喚醒一次\n")
	}
	c.L.Unlock()

	fmt.Println("所有運動員都準備就緒。比賽開始，3，2，1, ......")
}

// has some problem when rand duration time is so short, it is that fmt.Print("裁判醒來") will miss to display on the console.

// func main() {
// 	c := sync.NewCond(&sync.Mutex{})
// 	var readyCnt int

// 	for i := 0; i < 10; i++ {
// 			go func(i int) {
// 					// 模擬熱身
// 					time.Sleep(time.Duration(rand.Int63n(10)) * time.Second)

// 					// 熱身結束，加鎖更改等待條件
// 					c.L.Lock()
// 					readyCnt++
// 					c.L.Unlock()

// 					fmt.Printf("運動員#%d 已準備就緒\n", i)
// 					c.Broadcast()    // 示意所有裁判員
// 			}(i)
// 	}

// 	var wg sync.WaitGroup
// 	wg.Add(2)
// 	for i:=0; i<2; i++ {
// 			go func(i int) {
// 					defer wg.Done()
// 					c.L.Lock()
// 					for readyCnt != 10 {
// 							c.Wait()
// 							fmt.Printf("裁判員 %d 被喚醒一次\n", i)
// 					}
// 					c.L.Unlock()
// 			}(i)
// 	}
// 	wg.Wait()

// 	fmt.Println("所有運動員都準備就緒。比賽開始，3，2，1, ......")
// }
