package main

import (
	"fmt"
	"net/http"
)

func handler(w http.ResponseWriter, r *http.Request) {
	w.Header().Set("TEST_HEADER", "THIS IS A TEST")
	w.Header().Set("Test_Second_Header", "This Is A Test")
	w.Header().Set("test_third_header", "this is a test")
	fmt.Fprint(w, "ok")
}

func main() {
	http.HandleFunc("/", handler)
	http.ListenAndServe(":8888", nil)
}
