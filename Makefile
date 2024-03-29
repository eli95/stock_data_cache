PACKAGE=$(shell cat PACKAGE)

all:clean
	mkdir -p build
	GOOS=linux GOARCH=amd64 go build -v -ldflags '-s -w' -o build/stock_data_cache main.go

clean:
	rm -rf build
