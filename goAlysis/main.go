package main

import (
	"bytes"
	"flag"
	"log"
	"math/rand"
	"net/http"
	"os/signal"
	"syscall"
	"time"

	_ "net/http/pprof"
	"os"
	"runtime/pprof"
	"sync"
)

var cpuprofile = flag.String("cpuprofile", "", "write cpu profile to `file`")
var memprofile = flag.String("memprofile", "", "write mem profile to `file`")

func handleIndex(w http.ResponseWriter, req *http.Request) {
	log.Println("test")
	w.Write([]byte("test"))
}

func main() {
	flag.Parse()

	doneCh := make(chan struct{})
	if *cpuprofile != "" {
		f, err := os.Create(*cpuprofile)
		if err != nil {
			log.Fatal("could not create CPU profile: ", err)
		}
		defer f.Close()

		if err := pprof.StartCPUProfile(f); err != nil {
			log.Fatal("could not start CPU Profile: ", err)
		}

		defer pprof.StopCPUProfile()
	}
	var wait sync.WaitGroup
	go func() {

		for {
			timeCh := time.After(5 * time.Second)
			select {
			case <-timeCh:
				log.Println("test")
			}
		}

	}()

	for i := 0; i < 200; i++ {
		wait.Add(1)
		go cyclenum(30000, &wait)
	}

	writeBytes()

	wait.Wait()

	if *memprofile != "" {
		f, err := os.Create(*memprofile)
		if err != nil {
			log.Fatal("could not create memory profile: ", err)
		}
		defer f.Close()
		// runtime.GC()

		if err := pprof.WriteHeapProfile(f); err != nil {
			log.Fatal("cound not write memory profile: ", err)
		}
	}

	sigChan := make(chan os.Signal, 1)
	signal.Notify(sigChan, os.Interrupt, syscall.SIGTERM)

	go func() {
		sig := <-sigChan
		if sig.String() == "interrupt" {
			log.Println("Program terminated")
			close(doneCh)
		}
	}()

	<-doneCh
}

func cyclenum(num int, wg *sync.WaitGroup) {
	slice := make([]int, 0)
	for i := 0; i < num; i++ {
		for j := 0; j < num; j++ {
			j = i + j
			slice = append(slice, j)
		}
	}
	wg.Done()
}

func writeBytes() *bytes.Buffer {
	var buff bytes.Buffer

	for i := 0; i < 30000; i++ {
		buff.Write([]byte{'0' + byte(rand.Intn(10))})
	}
	return &buff
}
