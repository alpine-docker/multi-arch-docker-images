FROM alpine

RUN apk add --update --no-cache postgresql-client

ENTRYPOINT ["/usr/bin/psql"]
CMD ["--help"]
