package main

import (
	"bufio"
	"fmt"
	"io"
	"os"
	"time"
)

func main() {
	file := openFileTest("./demo.txt")
	defer file.Close()
	readFileTest(file)
}


// 創建目錄
func createDirTest() {
	err := os.Mkdir("test", 0777)
	if err != nil {
		fmt.Println(err)
	}
}

// 創建多層目錄
func createMutilLayerDirTest() {
	err := os.MkdirAll("dir1/dir2/dir3", 0777)
	if err != nil {
		fmt.Println(err)
	}
}

// 創建多層目錄，透過特定格式進行管理
func createMutilLayerDirHasFormatTest(){
	uploadDir := "static/upload/" + time.Now().Format("2022/08/10")
	err := os.MkdirAll(uploadDir, 777)
	if err != nil{
		fmt.Println(err)
	}
}

// 改變目錄名稱或位置
func renameDirTest(){
	dir1 := "dir_name1_test"
	dir2 := "dir_name2_test"
	err := os.Mkdir(dir1, 777)
	if err != nil {
		fmt.Println(err)
	}

	err = os.Rename(dir1, dir2)
	if err != nil {
		fmt.Println(err)
	}
}

//創建一個檔案
func createFileTest(){
	fp, err := os.Create("./test.txt")
	fmt.Println(fp, err)
	fmt.Printf("%T", fp)

	if err != nil {
		fmt.Println(err)
		return
	}

	defer fp.Close()
}

// 打開一份檔案
func openFileTest(fs string) (f *os.File) {
	f, err := os.Open(fs)
	if err != nil{
		fmt.Printf("打開檔案出錯: %v\n", err)
	}
	fmt.Println(f)
	return f
}

// 打開檔案2
func openFileTest2(){
	file, err := os.OpenFile("./demo.txt", os.O_CREATE|os.O_APPEND, 0666)
	if err != nil{
		fmt.Println(err)
		return
	}
	defer file.Close()
}

func readFileTest(f *os.File){
	fmt.Println(f)
	reader := bufio.NewReader(f)
	for {
		line, err := reader.ReadString('\n')
		if err == io.EOF {
			break
		}

		fmt.Println(line)
	}
}
