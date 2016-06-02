FROM golang:1.6.2-alpine

RUN mkdir -p /web/static/

COPY web.go /web/web.go
COPY index.html /web/static/index.html

ENTRYPOINT go run /web/web.go

