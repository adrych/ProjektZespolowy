package main

import (
	"fmt"
	"net/http"
)

func messageHandler(message string) http.Handler {
	return http.HandlerFunc(func(w http.ResponseWriter, r *http.Request) {
		fmt.Fprintf(w, message)
	})
}

func main() {
	mux := http.NewServeMux()
	mux.Handle("/", messageHandler("Testing HTTP Service"))
	http.ListenAndServe("0.0.0.0:8080", mux)

}
