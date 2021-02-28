FROM golang AS builder

WORKDIR /var/www

COPY ./desafio-01.go /var/www

RUN go build desafio-01.go && \
    rm -rf ./desafio-01.go

FROM scratch
COPY --from=builder /var/www .
ENTRYPOINT ["./desafio-01"]