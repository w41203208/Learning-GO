package middleware

import (
	"log"
	"net/http"
)

type TestMuxMiddleware func(w http.ResponseWriter, r *http.Request)

func (tm TestMuxMiddleware) ServeHTTP(w http.ResponseWriter, r *http.Request) {
	log.Printf("test first")
	// log.Printf("前置中间件Got a %s request for: %v", r.Method, r.URL)
	tm(w, r)
	log.Println("test back")
	// log.Println("后置中间件Handler finished processing request")
}
