package main

import (
	"bufio"
	"fmt"
	"log"
	"os"
	"strings"
)

func createFile(pkgsFile string) {
	// detect if file exists
	var _, err = os.Stat(pkgsFile)

	// create file if not exists
	if os.IsNotExist(err) {
		var file, err = os.Create(pkgsFile)

		if err != nil {
			log.Fatalf("failed creting file: %s", err)
		}
		defer file.Close()
	}

	fmt.Println("==> done creating file", pkgsFile)
}

func appendFile(serverName string, pkgsFile string, eachline string) {
	fmt.Println("==> appending file")

	// open file
	file, err := os.OpenFile(pkgsFile, os.O_WRONLY|os.O_APPEND, 0644)
	if err != nil {
		log.Fatalf("failed opening file: %s", err)
	}
	defer file.Close()

	// append string to file
	if _, err := file.WriteString("\n" + serverName + "\n"); err != nil {
		log.Fatalf("failed writing to file: %s", err)
	}

	// append string to file
	_, err = file.WriteString(eachline)
	if err != nil {
		log.Fatalf("failed writing to file: %s", err)
	}

	fmt.Printf("\n==> done appended file: " + pkgsFile)
}

func readFilesInDir(path string, pkgsFile string, upgradeStr string) {
	fmt.Println("==> reading files from directorory: " + path)

	// open directory
	f, err := os.Open(path)
	if err != nil {
		log.Fatal(err)
	}

	// Read files in dir
	files, err := f.Readdir(-1)
	f.Close()
	if err != nil {
		log.Fatal(err)
	}

	// Loop through files in dir
	for _, file := range files {

		// open file
		openFile, err := os.Open(path + "/" + file.Name())
		serverName := strings.TrimSuffix(file.Name(), ".json")

		if err != nil {
			log.Fatalf("failed opening file: %s", err)
		}

		// scan file
		scanner := bufio.NewScanner(openFile)
		scanner.Split(bufio.ScanLines)
		var txtlines []string

		// parses file line by line
		for scanner.Scan() {
			txtlines = append(txtlines, scanner.Text())
		}

		openFile.Close()

		// read line by line
		contains := false
		for _, eachline := range txtlines {
			// Skip servers that do not have upgrades available
			if strings.Contains(eachline, upgradeStr) {
				contains = true
			}

			if !contains {
				continue
			}

			fmt.Println("\nServer: " + serverName)
			result := strings.Split(eachline, ",")
			for i := range result {

				if strings.Contains(result[i], "Inst") {
					fmt.Println(result[i])
					appendFile(serverName, pkgsFile, result[i])
				} else if strings.Contains(result[i], "  linux-headers-") {
					fmt.Println(result[i])
					appendFile(serverName, pkgsFile, result[i])
				}
			}
		}
	}
}

func main() {
	dataPath := "/tmp/upgradable-pkgs/"
	pkgsFile := "/tmp/all-upgradable-pkgs.txt"
	upgradeStr := "The following packages will be upgraded"

	createFile(pkgsFile)
	readFilesInDir(dataPath, pkgsFile, upgradeStr)
}
