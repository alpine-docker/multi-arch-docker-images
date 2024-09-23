mkcert - A simple zero-config tool to make locally trusted development certificates with any names you'd like.

### source of `Dockerfile`

https://github.com/alpine-docker/multi-arch-docker-images/blob/master/mkcert/Dockerfile

### Daily CI build logs

N/A

### Docker image tags

https://hub.docker.com/repository/docker/alpine/mkcert/tags

### quick start

```
alias mkcert="docker run -ti --rm alpine/mkcert"

mkcert localhost 127.0.0.1 web-service ::1
```
