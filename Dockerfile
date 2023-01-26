# FROM golang:alpine
# WORKDIR /build
# COPY main.go .
# RUN go build -o hello main.go
# CMD ["./hello"]
FROM golang:alpine AS builder
WORKDIR /build
ADD go.mod .
COPY . .
RUN go build -o hello main.go
FROM alpine
WORKDIR /build
COPY --from=builder /build/hello /build/hello
CMD ["./hello"]
