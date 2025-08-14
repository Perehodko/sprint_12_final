FROM golang:1.23

WORKDIR /app

COPY . .

RUN go mod tidy
RUN go mod download

RUN go build -o tracker main.go parcel.go

CMD ["./tracker"]
