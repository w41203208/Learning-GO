package main

import (
	"fmt"
	"log"
	"net"
	"unsafe"
)

func main() {
	udpAddr, err := net.ResolveUDPAddr("udp", "[::]:8012")
	if err != nil {
		log.Fatal(err)
		return
	}

	conn, err := net.ListenUDP("udp", udpAddr) 
	if err != nil {
		log.Fatal(err)
		return
	}
	defer conn.Close()

	for {
		buf := make([]byte, 1024)
		_, raddr, err := conn.ReadFromUDP(buf)
		if err != nil {
			log.Fatal(err)
			return
		}

		fmt.Println("用戶端發送：", *(*string)(unsafe.Pointer(&buf)))
		if *(*string)(unsafe.Pointer(&buf)) == "Connect" {
			conn.WriteToUDP([]byte("Hello, connect is Success!"), raddr)
		}else{
			conn.WriteToUDP([]byte("Hello, client. I'm server side"), raddr)
		}

		

		// if err != nil {
		// 	log.Fatal(err)
		// 	return
		// }
	}
}
