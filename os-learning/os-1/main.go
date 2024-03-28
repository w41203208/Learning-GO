package main

import (
	"bufio"
	"fmt"
	"io"
	"io/fs"
	"os"
	"strconv"
	"time"
)

func ListFiles(path string) []fs.DirEntry {
	fileInfos, err := os.ReadDir(path)
	if err != nil {
		fmt.Println(err)
	}

	return fileInfos
}

func MoveFile(oldFileName string, NewFileName string) {
	err := os.Rename(oldFileName, NewFileName)
	if err != nil {
		fmt.Println(err)
	}
}

func CopyFile(oldFileName string, NewFileName string) {
	err := os.Link(oldFileName, NewFileName)
	if err != nil {
		fmt.Println(err)
	}
}

func IsExists(path string) (bool, fs.FileInfo) {
	f, err := os.Stat(path)
	if err != nil {
		return os.IsExist(err), f
	}
	return true, f
}

func main() {
	path := "D:\\downloads\\edge\\slot icon_來源_星城遊戲館_0326"
	new_path := "D:\\downloads\\edge\\slot game"
	name := "slot_game_"

	var index int = 0

	exist, rootDirInfo := IsExists(path)
	if !exist {
		return
	}
	if !rootDirInfo.IsDir() {
		return
	}

	var Dirs []string
	Dirs = append(Dirs, path)
	for len(Dirs) != 0 {
		firstPath := Dirs[0]
		Dirs = Dirs[1:]
		files := ListFiles(firstPath)
		for _, f := range files {
			fileName := firstPath + "\\" + f.Name()
			if f.IsDir() {
				Dirs = append(Dirs, fileName)
			} else {
				CopyFile(fileName, new_path+"\\"+name+strconv.Itoa(index)+".png")
				index++
			}
		}
	}

}

// 創建目錄
func CreateDirTest() {
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
func createMutilLayerDirHasFormatTest() {
	uploadDir := "static/upload/" + time.Now().Format("2022/08/10")
	err := os.MkdirAll(uploadDir, 777)
	if err != nil {
		fmt.Println(err)
	}
}

// 改變目錄名稱或位置
func renameDirTest() {
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

// 創建一個檔案
func createFileTest() {
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
	if err != nil {
		fmt.Printf("打開檔案出錯: %v\n", err)
	}
	fmt.Println(f)
	return f
}

// 打開檔案2
func openFileTest2() {
	file, err := os.OpenFile("./demo.txt", os.O_CREATE|os.O_APPEND, 0666)
	if err != nil {
		fmt.Println(err)
		return
	}
	defer file.Close()
}

func readFileTest(f *os.File) {
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
