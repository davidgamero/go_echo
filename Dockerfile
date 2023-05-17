FROM golang:1.20
ENV PORT 801
EXPOSE 801

WORKDIR /go/src/app
COPY . .

RUN go mod vendor
RUN go build -v -o app
RUN mv ./app /go/bin/

CMD ["app"]