#!/bin/bash

echo "Build Linux 64"
GOOS=linux GOARCH=amd64 go build -o ./bin/test-go-linux64 -ldflags="-X 'main.Version=$1'"

echo "Build Mac Apple Silicon"
GOOS=darwin GOARCH=arm64 go build -o ./bin/test-go-mac-m -ldflags="-X 'main.Version=$1'"

echo "Build Mac Intel 64"
GOOS=darwin GOARCH=amd64 go build -o ./bin/test-go-mac-intel -ldflags="-X 'main.Version=$1'"

echo "Build Windows 64"
GOOS=windows GOARCH=amd64 go build -o ./bin/test-go-windows-64.exe -ldflags="-X 'main.Version=$1'"
