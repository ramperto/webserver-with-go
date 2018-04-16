FROM golang:1.8 as goimage
ENV SRC=/go/src/
RUN mkdir -p /go/src/
WORKDIR /go/src/go_docker
RUN git clone -b <Specify-branchname> — single-branch <Github HTTP Url> /go/src/go_docker/ \
&& CGO_ENABLED=0 GOOS=linux GOARCH=amd64 \
go build -o bin/go_docker

