package main

import (
	"fmt"
	"log"
	"net"
)

func main() {
	Server()
}
func Server() {
	l, err := net.Listen("tcp", "0.0.0.0:8084")
	if err != nil {
		log.Fatal(err)
	}
	defer l.Close()

	for {
		conn, err := l.Accept()
		if err != nil {
			log.Fatal(err)
		}
		fmt.Printf("存取用戶端資訊: con=%v 用戶端ip=%v\n", conn, conn.RemoteAddr().String())

		go handleConnection(conn)
	}
}

func handleConnection(c net.Conn) {
	defer c.Close()

	for {
		fmt.Printf("伺服器在等待用戶端%s 發送資訊\n", c.RemoteAddr().String())
		buf := make([]byte, 1024)
		_, err := c.Read(buf)
		if err != nil {
			log.Fatal(err)
			break
		}
		l := len(buf)
		for i := 0; i < l; i++ {
			fmt.Printf("%x ", buf[i])
		}
	}
}
