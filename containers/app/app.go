package main

import (
  "net/http"
  "time"
  "fmt"
)

func main() {
  http.HandleFunc("/", func(w http.ResponseWriter, r *http.Request) {
    fmt.Fprintf(w, "%q", time.Now())
  })

  http.ListenAndServe(":3000", nil)
}
