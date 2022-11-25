package main

import (
	"fmt"
	"log"
	"net/http"

	"github.com/julienschmidt/httprouter"
)


func main(){
	router := httprouter.New()
	router.GET("/", func(w http.ResponseWriter, r *http.Request, _ httprouter.Params){
		fmt.Print(w);
		fmt.Print(r);
		w.Write([]byte("index page"))
	})
	router.POST("/default", func(w http.ResponseWriter, r *http.Request, _ httprouter.Params){
		w.Write([]byte("default get"))
	})
	router.GET("/default", func(w http.ResponseWriter, r *http.Request, _ httprouter.Params){
		w.Write([]byte("default post"))
	})
	router.GET("/user/name", func(w http.ResponseWriter, r *http.Request, p httprouter.Params){
		w.Write([]byte("user name:" + p.ByName("name")))
	})
	// router.GET("/user/*name", func(w http.ResponseWriter, r *http.Request, p httprouter.Params){
	// 	w.Write([]byte("user name:" + p.ByName("name")))
	// })
	log.Fatal(http.ListenAndServe(":8000", router))
}