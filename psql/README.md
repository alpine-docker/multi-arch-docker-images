psql — The PostgreSQL Command-Line Client

### source of `Dockerfile`

https://github.com/alpine-docker/multi-arch-docker-images/blob/master/psql/Dockerfile

### Daily CI build logs

N/A

### Docker image tags

https://hub.docker.com/repository/docker/alpine/psql/tags

### quick start

```
alias psql="docker run -ti --rm alpine/psql"

psql -h <host> -d <db-name> -U <username> -W
```

This image uses the system root certificate store by default (`PGSSLROOTCERT=system`), so SSL connections with `sslmode=verify-full` can validate server certificates without requiring a local `/root/.postgresql/root.crt` file.
