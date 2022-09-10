package main

import (
	"fmt"
	"math/rand"
	"sync"
	"time"
)

func main() {
}

func execPrimeNumber(){
	const max = 100
	numbers := IntegerGenerator()
	number := <-numbers
	
	for number <= max{
		fmt.Println(number)
		numbers = filter(numbers, number)
		number = <-numbers
	}
}
func IntegerGenerator() chan int{
	ch := make(chan int)
	
	go func(){
		for i := 2; ; i++{
			ch <-i
		}
	}()

	return ch
}

func filter(in chan int, number int) chan int{
	out := make(chan int)

	go func(){
		for {
			i := <-in
			
			
			if i%number != 0{
				out <-i
			}
		}
	}()

	return out
}


func execSelectTest(){
	ch1, ch2, ch3 := send(1), send(2), send(3)
	ch := make(chan int)
	timeout := time.After((1 * time.Second))
	
	go func(){
		for isTimeout := false; !isTimeout; {
			select {
			case v1 := <- ch1:
				ch <- v1
			case v2 := <- ch2:
				ch <- v2
			case v3 := <- ch3:
				ch <- v3
			case <-timeout:
				isTimeout = true
			}
		}
	}()

	for i := 0; i < 3; i++ {
		fmt.Println(<-ch)
	}
}

func send(i int) chan int {
	ch := make(chan int)
	go func() {
		ch <- i
	}()

	return ch
}


func execRecombination(){
	result := Recombination(branch(10), branch(20), branch(30))

	for i := 0; i < 3; i++ {
		fmt.Println(<-result)
	}
}

func doCompute(x int) int {
	time.Sleep(time.Duration(rand.Intn(10))*time.Millisecond)
	return 1 + x
}
func branch(x int) chan int{
	ch := make(chan int)
	go func(){
		ch <- doCompute(x)
	}()

	return ch
}

func Recombination(chs... chan int) chan int{
	ch := make(chan int)

	go func(){
		for i := 0; i < len(chs); i++ {
			select{
			case v1 := <-chs[i]:
				ch <-v1
			}
		}
	}()

	return ch
}



func execIntergerGenerator(){
	generator := IntegerGenerator()

	for i:=0; i<100; i++{
		fmt.Println(<-generator)
	}
}



func simpleTest(){
	messages := make(chan string)

	go func() {
		messages <-"ping"
	}()

	msg := <-messages
	fmt.Println(msg)
}


func echoTest(s string, times int){
	for i := 0; i < times; i++{
		time.Sleep(100 * time.Millisecond)
		fmt.Println(s)
	}
}

func signalTest(){
	ch := make(chan string)
	go func(){
		fmt.Println("開始goroutine")
		ch <- "signal"
		fmt.Println("退出goroutine")
	}() 
	fmt.Println("等待goroutine")
	<-ch
	fmt.Println("完成")
}

func chanHasBuf(){
	ch := make(chan int)
	ch <- 3
	ch <- 4
	ch <- 5
	fmt.Println(<-ch)
	fmt.Println(<-ch)
	fmt.Println(<-ch)
}

func mutexTest(){
	mutex := &sync.Mutex{}
	wait := &sync.WaitGroup{}

	//主執行緒鎖住
	fmt.Println("Locked")
	mutex.Lock()

	for i := 1; i <= 5; i++ {
		wait.Add(1)
		go func(i int){
			fmt.Println("Not Lock: ", i)
			mutex.Lock()
			fmt.Println("Lock: ", i)
			time.Sleep(time.Second)
			fmt.Println("Unlock: ", i)
			mutex.Unlock()
			defer wait.Done()
		}(i)
	}

	time.Sleep(time.Second)
	// 主執行緒釋放鎖
	fmt.Println("Unlocked")
	mutex.Unlock()

	wait.Wait()
}