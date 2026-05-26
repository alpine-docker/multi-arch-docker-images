psql — The PostgreSQL Command-Line Client

### Repository

The source for this image is available on GitHub:
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

### SSL certificate bundles

For most servers, the default system certificate store is enough:

```
docker run --rm -it alpine/psql \
  "host=your-db-host.example.com user=your_user dbname=your_db sslmode=verify-full"
```

For Amazon RDS, AWS also publishes a global certificate bundle. If an RDS certificate rotation or expiration causes `SSL error: certificate verify failed`, download the current bundle and mount it into the container:

```
curl -o ~/Downloads/global-bundle.pem https://truststore.pki.rds.amazonaws.com/global/global-bundle.pem

docker run --rm -it \
  -v ~/Downloads/global-bundle.pem:/tmp/global-bundle.pem \
  alpine/psql \
  "host=your-rds-endpoint.amazonaws.com user=your_user dbname=your_db sslmode=verify-full sslrootcert=/tmp/global-bundle.pem"
```
