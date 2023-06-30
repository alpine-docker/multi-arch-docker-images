psql — The PostgreSQL Command-Line Client

### source of `Dockerfile`

https://github.com/alpine-docker/multi-arch-libs/blob/master/psql/Dockerfile

### Daily CI build logs

N/A

### Docker image tags

https://hub.docker.com/repository/docker/alpine/psql/tags


### quick start

```
alias psql="docker run -ti --rm alpine/psql"

psql -d <db-name> -U <username> -W
```
