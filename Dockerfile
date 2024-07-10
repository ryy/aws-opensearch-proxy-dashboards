FROM golang:1.18-alpine

RUN apk add --no-cache git

RUN go install github.com/abutaha/aws-es-proxy@latest

ENTRYPOINT ["/go/bin/aws-es-proxy"]
