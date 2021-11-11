FROM golang:1.16-alpine

WORKDIR /usr/app

COPY main.go main.go
RUN go get
RUN go build main.go

ENTRYPOINT ["/usr/app/main", "-url", "$WEBHOOK_URL"]
