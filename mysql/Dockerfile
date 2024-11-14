FROM alpine

RUN apk add --update --no-cache mysql-client mariadb-connector-c-dev

ENTRYPOINT ["/usr/bin/mysql"]
CMD ["--help"]
