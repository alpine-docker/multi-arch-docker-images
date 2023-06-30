### source of `Dockerfile`

https://github.com/alpine-docker/multi-arch-libs/blob/master/lynx/Dockerfile

### Daily CI build logs

N/A

### Docker image tags

https://hub.docker.com/repository/docker/alpine/lynx/tags


### quick start

```
alias lynx="docker run -ti --rm alpine/lynx"

# interactive
lynx "www.google.com"

# text only
lynx -dump "www.google.com"
```

### official document:

https://lynx.browser.org/

https://lynx.invisible-island.net/release/lynx_help/lynx_help_main.html
