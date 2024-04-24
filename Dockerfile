# Сборка
FROM golang:latest AS build

WORKDIR /go/src/backend-trainee-assignment-2024
COPY go.mod .
COPY . .

RUN go mod tidy
RUN CGO_ENABLED=0 GOOS=linux go build -a -installsuffix cgo -o backend-trainee-assignment-2024 ./cmd

# Запуск
FROM alpine:latest

RUN apk --no-cache add ca-certificates

WORKDIR /root/

COPY --from=build /go/src/backend-trainee-assignment-2024/backend-trainee-assignment-2024 .

CMD ["./backend-trainee-assignment-2024"]