mkcert - A simple zero-config tool to make locally trusted development certificates with any names you'd like.

### source of `Dockerfile`

https://github.com/alpine-docker/multi-arch-docker-images/blob/master/mkcert/Dockerfile

### Daily CI build logs

N/A

### Docker image tags

https://hub.docker.com/repository/docker/alpine/mkcert/tags

### quick start

```
$ alias mkcert="docker run -ti --rm alpine/mkcert"

$ mkcert localhost 127.0.0.1 web-service ::1

Created a new local CA 💥
Note: the local CA is not installed in the system trust store.
Run "mkcert -install" for certificates to be trusted automatically ⚠️

Created a new certificate valid for the following names 📜
 - "localhost"
 - "127.0.0.1"
 - "web-service"
 - "::1"

The certificate is at "./localhost+3.pem" and the key at "./localhost+3-key.pem" ✅

It will expire on 23 December 2026 🗓
```
