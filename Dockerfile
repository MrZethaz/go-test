FROM golang:1.15

WORKDIR /app

COPY . .

RUN go build math.go math_test.go

CMD ["./math"]
