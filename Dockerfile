FROM golang:1.26.2-alpine as build

WORKDIR /go/src/github.com/laupse/native_histograms
COPY go.* .

RUN go mod download -x

COPY main.go .

RUN go build -o /go/bin/native_histograms

FROM alpine:3.23

COPY --from=build /go/bin/native_histograms /go/bin/

CMD [ "/go/bin/native_histograms" ]
