package main

import (
	"bufio"
	"fmt"
	"log"
	"net"
	"os"
	"strings"
)

func Client() {
	conn, err := net.Dial("tcp", "[::]:8787")
	if err != nil {
		log.Fatal(err)
	}

	reader := bufio.NewReader(os.Stdin)
	for {
		line, err := reader.ReadString('\n')
		if err != nil {
			log.Fatal(err)
		}
		line = strings.Trim(line, "\r\n")

		if line == "exit" {
			fmt.Println("使用者退出用戶端")
			break
		}

		content, err := conn.Write([]byte(line + "\n"))
		if err != nil {
			log.Fatal(err)
		}
		fmt.Printf("用戶端發送了 %d 位元組的資料到伺服器端\n", content)
	}
}

func main() {
	Client()
}
