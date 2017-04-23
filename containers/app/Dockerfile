FROM golang:alpine

ADD . /tmp
WORKDIR /tmp
RUN go build -o /opt/app app.go

ENTRYPOINT /opt/app

