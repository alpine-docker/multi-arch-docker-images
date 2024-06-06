sqlite

### source of `Dockerfile`

https://github.com/alpine-docker/multi-arch-docker-images/blob/master/sqlite/Dockerfile

### Daily CI build logs

N/A

### Docker image tags

https://hub.docker.com/repository/docker/alpine/mysql/tags

### quick start

```
docker run -v $(pwd):/app --rm alpine/sqlite /app/test.db "create table tbl1(one varchar(10), two smallint)"
```

If you run above command two times, you will see error

```
Error: in prepare, table tbl1 already exists
```

That means it works.
