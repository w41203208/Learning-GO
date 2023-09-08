package main

import (
	"fmt"
	"log"
	"net"
	"os"
)

func main() {
	conn, err := net.Dial("udp", "[::]:8012")
	if err != nil {
		log.Fatal(err)
		return
	}
	defer conn.Close()

	conn.Write([]byte("Connect"))

	// 傳送訊息給伺服器
	go func() {
		write_buf := make([]byte, 1024)
		for {
			n, err := os.Stdin.Read(write_buf)
			if err != nil {
				fmt.Println("os.Stdin. err = ", err)
				return
			}
			conn.Write(write_buf[:n])
		}
	}()
	
	// 讀伺服器的訊息
	read_buf := make([]byte, 1024)
	for { 
		n, err := conn.Read(read_buf)
		if err != nil {
			log.Fatal(err)
			return
		}
		fmt.Println("伺服器發來：", string(read_buf[:n]))
	}
}