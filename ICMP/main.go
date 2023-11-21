package main

import (
	"bytes"
	"encoding/binary"
	"fmt"
	"log"
	"net"
	"os"
	"time"
)

// ICMP 數據包結構
type ICMP struct {
	Type     uint8
	Code     uint8
	Checksum uint16
	ID       uint16
	Seq      uint16
}

// CheckSum 較驗和計算
func CheckSum(data []byte) uint16 {
	var (
		sum    uint32
		length = len(data)
		index  int
	)
	for length > 1 {
		sum += uint32(data[index])<<8 + uint32(data[index+1])
		index += 2
		length -= 2
	}
	if length > 0 {
		sum += uint32(data[index])
	}
	sum += (sum >> 16)
	return uint16(^sum)
}

func main() {
	if len(os.Args) < 2 {
		fmt.Println("Please input a valid domain or ip")
		return
	}
	domain := os.Args[1]
	var raddr, _ = net.ResolveIPAddr("ip", domain)
	fmt.Println("Target IP: " + raddr.String())

	//創建發送的ICMP包
	icmp := ICMP{
		Type:     8,
		Code:     0,
		Checksum: 0, //默認較驗和為0，後面計算後再寫入
		ID:       0,
		Seq:      0,
	}

	//創建buffer將包內數據寫入，以計算較驗和並將較驗和存入icmp結構體中
	var buffer bytes.Buffer
	binary.Write(&buffer, binary.BigEndian, icmp)
	icmp.Checksum = CheckSum(buffer.Bytes())
	buffer.Reset()
	//與目的IP地址建立連接，第二個參數為空則默認為本地IP，第三個參數為目的IP
	con, err := net.DialIP("ip4:icmp", nil, raddr)
	if err != nil {
		log.Fatal(err)
	}
	//關閉連接
	defer con.Close()
	//創建buffer將要發送的數據存入
	var sendBuffer bytes.Buffer
	binary.Write(&sendBuffer, binary.BigEndian, icmp)
	if _, err := con.Write(sendBuffer.Bytes()); err != nil {
		log.Fatal(err)
	}
	//開始計算時間
	timeStart := time.Now()
	//設置超時時間2s
	con.SetReadDeadline((time.Now().Add(time.Second * 2)))
	//創建接收bit陣列
	rec := make([]byte, 1024)
	//讀取連接返回的數據，將數據放入rec中
	recCnt, err := con.Read(rec)
	if err != nil {
		log.Fatal(err)
	}
	//設置結束時間，計算兩次時間之差為ping的時間
	timeEnd := time.Now()
	durationTime := timeEnd.Sub(timeStart).Nanoseconds() / 1e6
	//顯示結果
	fmt.Printf("%d bytes from %s: seq=%d time=%dms\n", recCnt, raddr.String(), icmp.Seq, durationTime)

}
