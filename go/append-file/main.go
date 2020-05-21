package main

import (
	"fmt"
	"io/ioutil"
	"log"
	"os"
)

// AppendFile - Append a file
func AppendFile() {
	file, err := os.OpenFile("test.txt", os.O_WRONLY|os.O_APPEND, 0644)
	if err != nil {
		log.Fatalf("failed opening file: %s", err)
	}
	defer file.Close()

	len, err := file.WriteString(" The Go language was conceived in September 2007 by Robert Griesemer, Rob Pike, and Ken Thompson at Google.")
	if err != nil {
		log.Fatalf("failed writing to file: %s", err)
	}
	fmt.Printf("\nLength: %d bytes", len)
	fmt.Printf("\nFile Name: %s", file.Name())
}

// ReadFile - Append a file
func ReadFile() {
	data, err := ioutil.ReadFile("test.txt")
	if err != nil {
		log.Panicf("failed reading data from file: %s", err)
	}
	fmt.Printf("\nLength: %d bytes", len(data))
	fmt.Printf("\nData: %s", data)
	fmt.Printf("\nError: %v", err)
}

func main() {
	fmt.Printf("######## Append file #########\n")
	AppendFile()

	fmt.Printf("\n\n######## Read file #########\n")
	ReadFile()
}
