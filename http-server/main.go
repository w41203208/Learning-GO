package main

import (
	"fmt"
	"log"
	"net/http"
)

type muxMiddleware func(w http.ResponseWriter, r *http.Request)

func (f muxMiddleware) ServeHTTP(w http.ResponseWriter, r *http.Request) {
	fmt.Print("test")
	f(w, r)
}
func test(handler http.Handler) http.Handler {
	return http.HandlerFunc(func(w http.ResponseWriter, r *http.Request) {
		log.Printf("前置中间件Got a %s request for: %v", r.Method, r.URL)
		handler.ServeHTTP(w, r)
		log.Println("后置中间件Handler finished processing request")
	})
}

func main() {
	mux := http.NewServeMux()
	mux.Handle("/", muxMiddleware(func(w http.ResponseWriter, req *http.Request) {
		w.Write([]byte("Hello1"))
	}))
	new_mux := test(mux)

	server := &http.Server{
		Addr:    ":8000",
		Handler: new_mux,
	}
	if err := server.ListenAndServe(); err != nil {
		log.Fatal(err)
	}
}
