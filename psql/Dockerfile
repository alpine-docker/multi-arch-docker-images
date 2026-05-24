FROM alpine

RUN apk add --update --no-cache postgresql-client

# By default Postgres looks for a root cert in /root/.postgresql/root.crt which doesn't exist within this container
ENV PGSSLROOTCERT=system

ENTRYPOINT ["/usr/bin/psql"]
