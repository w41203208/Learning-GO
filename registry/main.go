package main

import (
	"internal/syscall/windows/registry"
	"log"
)

func main() {
	k, err := registry.OpenKey(registry.LOCAL_MACHINE, `SOFTWARE\Microsoft\Windows NT\CurrentVersion`, registry.QUERY_VALUE)
	if err != nil {
		log.Fatal(err)
	}
	defer k.Close()

	s, _, err := k.GetStringValue("SystemRoot")
	if err != nil {
		log.Fatal(err)
	}
	log.Printf("Windows system root is %q\n", s)
	// k, err := registry.OpenKey(registry.LOCAL_MACHINE, `System\CurrentControlSet\Control SystemStartOptions`, registry.QUERY_VALUE)
	// if err != nil {
	// 	log.Println(err)
	// }
	// tempBuf := make([]byte, 1024)
	// n, _, _ := k.GetValue("SystemStartOptions", tempBuf)
	// log.Println(n)
}
