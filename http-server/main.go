package main

import (
	"log"
	"net/http"

	"servertest/src/handler"
	"servertest/src/middleware"
)

//
func test(handler http.Handler) http.Handler {
	return http.HandlerFunc(func(w http.ResponseWriter, r *http.Request) {
		log.Printf("前置中间件Got a %s request for: %v", r.Method, r.URL)
		handler.ServeHTTP(w, r)
		log.Println("后置中间件Handler finished processing request")
	})
}

func main() {
	mux := http.NewServeMux()
	mux.Handle("/test", middleware.TestMuxMiddleware(handler.TestHandler))
	mux.HandleFunc("/srs", middleware.TestMuxMiddleware(handler.SrsHandler))
	new_mux := test(mux)

	server := &http.Server{
		Addr:    ":8000",
		Handler: new_mux,
	}
	if err := server.ListenAndServe(); err != nil {
		log.Fatal(err)
	}
}
