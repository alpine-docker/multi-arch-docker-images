FROM alpine

RUN apk add --update --no-cache mysql-client mariadb-connector-c

ENTRYPOINT ["/usr/bin/mariadb"]
CMD ["--help"]
