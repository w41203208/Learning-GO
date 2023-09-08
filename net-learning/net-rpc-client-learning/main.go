package main

import (
	"fmt"
	"log"
	"net/rpc"
	"os"
	"strconv"
)

type ArgsTwo struct {
	X, Y int
}

func main() {
	client, err := rpc.DialHTTP("tcp", "[::]:8080")
	if err != nil {
		log.Fatal(err)
	}

	i1, _ := strconv.Atoi(os.Args[1])
	i2, _ := strconv.Atoi(os.Args[2])
	args := ArgsTwo{i1, i2}
	fmt.Println(args)
	var reply int
	err = client.Call("Algorithm.Sum", args, &reply)
	if err != nil {
		log.Fatal(err)
	}

	fmt.Printf("Algorithm 和為: %d+%d=%d\n", args.X, args.Y, reply)
}