package main

import (
	"fmt"
	"os"
	"path/filepath"
)

var Version = "unknown"

func main() {
	e, err := os.Executable()
	if err != nil {
		panic(err)
	}
	ep := filepath.Dir(e)

	file, err := os.Create(fmt.Sprintf("%s/test.txt", ep))
	defer file.Close()
	if err != nil {
		panic(err)
	}

	_, err = file.WriteString(fmt.Sprintf("Test text. Version: %s", Version))
	if err != nil {
		panic(err)
	}

	fmt.Println("complete")
}
