package main

import (
	"flag"
	"fmt"
	"log"
	"net/http"
	"time"
)

var port = flag.Int("port", 8080, "port for server")

func main() {
	flag.Parse()

	addr := fmt.Sprintf(":%d", *port)
	log.Printf("Serving on %s\n", addr)
	log.Fatal(http.ListenAndServe(addr, http.HandlerFunc(helloHandler)))
}

func helloHandler(w http.ResponseWriter, r *http.Request) {
	time.Sleep(time.Duration(2) * time.Second)
	w.WriteHeader(http.StatusOK)
	w.Write([]byte("you got served!\n"))
}
