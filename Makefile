export GOFLAGS=-mod=vendor
export GO11MODULE=on

UNAME := $(shell uname -s)
ARCH := $(shell uname -m)

.PHONY: clean

go.sum:
	go mod verify && go mod tidy

build/test-bin: 

build: go.sum go.mod *.go
	go build -o build/test-bin

clean:
	rm -rf build/*
