package main

import (
	"fmt"
	"io/ioutil"
	"log"
	"net/http"
       )

func main() {
	http.HandleFunc("Connect", func(http.ResponseWriter, *http.Request) {
		log.Println("Connection Established")
	})


	http.HandleFunc("/", func(rw http.ResponseWriter, r *http.Request) {
		log.Println("Waiting for Connection......")


		b, err := ioutil.ReadAll(r.Body)
		if err != nil {
			log.Println("Error reading body", err)

			http.Error(rw, "Unable to Connect ERROR", http.StatusBadRequest)
			return
		}

		fmt.Fprintf(rw, "Communication Started %s", b)
	})

	log.Println("Starting Server")
	err := http.ListenAndServe(":9090", nil)
	log.Fatal(err)
}
