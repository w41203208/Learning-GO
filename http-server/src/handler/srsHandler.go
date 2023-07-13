package handler

import "net/http"

func SrsHandler(w http.ResponseWriter, req *http.Request) {
	w.Write([]byte("srs"))
}
