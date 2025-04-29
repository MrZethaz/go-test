FROM golang:1.15-alpine as builder

WORKDIR /app

COPY . .

RUN go build math.go math_test.go

FROM scratch

WORKDIR /app

COPY --from=builder /app/math .

ENTRYPOINT [ "./math" ]
