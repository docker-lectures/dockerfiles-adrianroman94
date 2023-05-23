FROM golang as builder
COPY . .
RUN go build dispacher.go