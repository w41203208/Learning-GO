package osoperation

import (
	"bufio"
	"fmt"
	"io"
	"os"
	"regexp"
)

// 創建目錄
func CreateDir(name string) {
	mutilDir_r, err := regexp.Compile(`([\w]+\\)+[\w]+$`); if err != nil {
		fmt.Println(err)
	}

	singleDir_r, err := regexp.Compile(`^[\w]+[\w]+$`); if err != nil {
		fmt.Println(err)
	}

	if mutilDir_r.MatchString(name) { // 創建多層目錄
		fmt.Println("This is mutil layer dir create")
		if err := os.MkdirAll(name, 0777); err != nil {
			fmt.Println(err)
		}
	}else if singleDir_r.MatchString(name) { // 創建單層目錄
		fmt.Println("This is single layer dir create")
		if err := os.Mkdir(name, 0777); err != nil {
			fmt.Println(err)
		}
	}else{
		fmt.Println("This is invalid")
	}

}

// 創建多層目錄，透過特定格式進行管理
// func createMutilLayerDirHasFormatTest(){
// 	uploadDir := "static/upload/" + time.Now().Format("2022/08/10")
// 	err := os.MkdirAll(uploadDir, 777)
// 	if err != nil{
// 		fmt.Println(err)
// 	}
// }

// 改變目錄名稱或位置
func RenameDir(newFileName string, oldFileName string){
	// dir1 := "dir_name1_test"
	// dir2 := "dir_name2_test"
	// err := os.Mkdir(dir1, 777)
	// if err != nil {
	// 	fmt.Println(err)
	// }

	err := os.Rename(oldFileName, newFileName)
	if err != nil {
		fmt.Println(err)
	}
}

//創建一個檔案
func CreateFile(fileName string, fileType string){
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
// func openFileTest(fs string) (f *os.File) {
// 	f, err := os.Open(fs)
// 	if err != nil{
// 		fmt.Printf("打開檔案出錯: %v\n", err)
// 	}
// 	fmt.Println(f)
// 	return f
// }

// 打開檔案2
func OpenFile(fs string){
	file, err := os.OpenFile(fs, os.O_CREATE|os.O_APPEND, 0666)
	if err != nil{
		fmt.Println(err)
		return
	}
	defer file.Close()
}

func ReadFile(f *os.File){
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
