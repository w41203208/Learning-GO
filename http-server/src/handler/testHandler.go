package handler

import "net/http"

func TestHandler(w http.ResponseWriter, req *http.Request) {
	w.Write([]byte("Hello1"))
}
