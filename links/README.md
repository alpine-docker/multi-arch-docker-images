### source of `Dockerfile`

https://github.com/alpine-docker/multi-arch-libs/blob/master/links/Dockerfile

### Daily CI build logs

N/A

### Docker image tags

https://hub.docker.com/repository/docker/alpine/links/tags


### quick start

```
alias links="docker run -ti --rm alpine/links"

# interactive
links "www.google.com"

# text only
links -dump "www.google.com"
```

### official document:

http://links.twibright.com/user_en.html
