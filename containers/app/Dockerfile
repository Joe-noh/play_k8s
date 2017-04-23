# FROM golang:alpine AS builder

# ADD . /tmp
# WORKDIR /tmp
# RUN go build -o app app.go

FROM busybox

# COPY --from=builder /work/app /opt/app
COPY ./app /opt/app

ENTRYPOINT /opt/app

