FROM golang:1.23.2 AS build

WORKDIR /app

COPY . .

RUN go mod tidy

RUN CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -o stress-test .

FROM scratch

WORKDIR /app

COPY --from=alpine /etc/ssl/certs /etc/ssl/certs
COPY --from=build /app/stress-test .

ENTRYPOINT [ "./stress-test" ]