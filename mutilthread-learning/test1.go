package main

import (
	"fmt"
	"log"
	"os"
	"os/signal"
	"strconv"
	"syscall"
	"time"
)

type Test struct {
	dChan     chan string
	closeChan chan struct{}
}

func (t *Test) Stop() {
	close(t.closeChan)
}
func (t *Test) Start() {
	t.closeChan = make(chan struct{})
	go func() {
		for {
			data := <-t.dChan
			fmt.Println(data)
		}
	}()

	<-t.closeChan
}

func New() *Test {
	return &Test{dChan: make(chan string)}
}

func (t *Test) GenData(data string) {
	t.dChan <- data
}
func Test1() {
	var test = New()

	sigChan := make(chan os.Signal, 1)
	signal.Notify(sigChan, os.Interrupt, syscall.SIGTERM)

	go func() {
		sig := <-sigChan
		if sig.String() == "interrupt" {
			log.Println("Program terminated")
			test.Stop()
		}
	}()

	go func() {
		test.GenData("test")
	}()

	select {
	case <-time.After(50 * time.Millisecond):
		for i := 0; i < 5; i++ {
			// select {
			// case <-time.After(50 * time.Millisecond):
			go func(a int) {

				var str = "test" + strconv.Itoa(a)
				test.GenData(str)
			}(i)
			// }
		}
	}

	test.Start()
}
