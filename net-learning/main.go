package main

import (
	"bytes"
	"fmt"
	"io"
	"net"
	"os"
	"unsafe"
)


func main(){
	if len(os.Args) != 2 {
		fmt.Fprintf(os.Stderr, "Usage: %s host:port", os.Args[0])
		os.Exit(1)
	}

	service := os.Args[1]
	conn, err := net.Dial("tcp", service)
	validateError(err)

	_, err = conn.Write([]byte("HEAD / HTTP/1.0\r\n\r\n"))
	validateError(err)

	result, err := fullyRead(conn)
	validateError(err)

	fmt.Println(result)
	fmt.Println(byte2string(result))

	os.Exit(0)

}
func byte2string(b []byte) string {
	s := *(*string)(unsafe.Pointer(&b))
	return s
}

func validateError(err error){
	if err != nil {
		fmt.Fprintf(os.Stderr, "Fatal error: %s", err.Error())
		os.Exit(1)
	}
}

func fullyRead(conn net.Conn) ([]byte, error){
	defer conn.Close()

	result := bytes.NewBuffer(nil)
	var buf [512]byte
	for {
		n, err := conn.Read(buf[0:])
		result.Write(buf[0:n])
		if err != nil {
			if err == io.EOF {
				break
			}
			return nil, err
		}
	}
	return result.Bytes(), nil
}