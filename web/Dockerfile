FROM golang as builder
WORKDIR web
COPY . .
RUN go build dispatcher.go

FROM alpine
COPY --from=builder /go/web/dispatcher .
CMD ["./dispatcher"]
EXPOSE 80