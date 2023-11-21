<<<<<<< HEAD
package main

import (
	"fmt"
	"unsafe"
)

type People interface{
	Do()
}

type EmptyStudent struct {
	student *Student
}
type Student struct{
	ID 	  	int32
	Number 	int8
}

func (s *Student) Do(){
	fmt.Printf("Student [%d] do something.\n", s.ID)
}

type FakeStudent struct{
	student *Student
	FakeID string
}

type TrustStudent struct{
	student *Student
	TrustID string
}

func (s *TrustStudent) Do(){
	fmt.Printf("Student [%d] do something.\n", s.student.ID)
}

func (s *FakeStudent) Do(){
	fmt.Printf("FakeStudent [%d] do something.\n", s.student.ID)
}


func main(){
	// 使用 unsafe 方式強制轉型 struct，屬性的 type 順序要一致，否則會出現型態轉換問題


	var s1 = &Student{
		ID: 1,
		Number: 2,
	}
	fmt.Println("Student s1")
	fmt.Println(unsafe.Pointer(s1))
	fmt.Println(unsafe.Pointer(&s1.ID))
	fmt.Println(unsafe.Pointer(&s1.Number))

	var fs1 = &FakeStudent{
		student: s1,
		FakeID: "Fake",
	}
	fmt.Println("FakeStudent fs1")
	fmt.Println(unsafe.Pointer(fs1))
	fmt.Println(unsafe.Pointer(&fs1.student))
	fmt.Println(unsafe.Pointer(fs1.student))
	fmt.Println(unsafe.Pointer(&fs1.FakeID))




	// TestAnyTypeStudentToTypeStudent(s1)



	// FakeStudentToStudent(s1)
// 	var fs1 = FakeStudent{ID: 2, Phone: "0965"}

	// i := reflect.TypeOf(fs1)
// 	t := reflect.PtrTo(i)

// 	fmt.Println(t)
}

func TestAnyTypeStudentToTypeStudent(v any) {
	s := *(*EmptyStudent)(unsafe.Pointer(&v))
	fmt.Println(s.student)
}




func FakeStudentToStudent(p People){
	p.(*Student).Do()
}

// func TypeOf(i any) Type{
// 	eface := *(*emptyInterface)(unsafe.Pointer(&i))

// 	return toType(eface.typ)
// }
=======
package main

import (
	"fmt"
	"sync"
	"time"
)

func main() {
	wait := &sync.WaitGroup{}
	ch := make(chan string)
	go func() {
		ch <- "Hello"
		time.Sleep(2 * time.Second)
		ch <- "World"
		close(ch)
	}()
	go func() {
		wait.Add(1)
		for message := range ch {
			fmt.Println(message)
		}
		defer wait.Done()
	}()

	fmt.Println("test")
	wait.Wait()
}
>>>>>>> 25c36c416a30a09dc89874e39b3c43edfb47aecd
