FROM golang:1.16-alpine
WORKDIR /build
COPY go.mod .
RUN go mod download
COPY . .
RUN go build -o /main main.go
ENTRYPOINT ["/main"]