<<<<<<< HEAD:net-tcp-serverside-learning/main.go
<<<<<<< HEAD
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
	l, err := net.Listen("tcp", "127.0.0.1:8787")
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
		n, err := c.Read(buf)
		if err != nil {
			log.Fatal(err)
			break
		}

		fmt.Print(string(buf[:n]))
	}
}
=======
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
>>>>>>> 25c36c416a30a09dc89874e39b3c43edfb47aecd
=======
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
	l, err := net.Listen("tcp", "[fe80::8008:b4b1:203a:60d6]:7890")
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
>>>>>>> 30d6159afb36e632e40e6c1bb61ba2ca746ec9b4:net-learning/net-tcp-serverside-learning/main.go
