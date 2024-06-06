### docker-openssl-alpine

A useful simple openssl container running in alpine Linux

[![DockerHub Badge](http://dockeri.co/image/alpine/openssl)](https://hub.docker.com/r/alpine/openssl/)

### Github Repo

https://github.com/alpine-docker/multi-arch-docker-images/blob/master/openssl

### CI build logs

https://app.circleci.com/pipelines/github/alpine-docker/multi-arch-docker-images

### Docker image tags

https://hub.docker.com/r/alpine/openssl/tags/

### usage

    docker run -ti --rm -v $(pwd):/apps -w /apps alpine/openssl <openssl_command>

### Optional usage 1:

    alias openssl="docker run -ti --rm -v $(pwd):/apps -w /apps alpine/openssl"
