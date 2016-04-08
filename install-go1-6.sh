#!/bin/sh

wget https://storage.googleapis.com/golang/go1.6.linux-amd64.tar.gz
tar -xzf go1.6.linux-amd64.tar.gz -C /usr/local
go get github.com/onsi/ginkgo/ginkgo golang.org/x/tools/cmd/cover

