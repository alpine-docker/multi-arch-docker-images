# alpine/curl

[If enjoy, please consider buying me a coffee.](https://www.buymeacoffee.com/ozbillwang)

Alpine-based image with just curl

NOTES: the original upstream https://github.com/appropriate/docker-curl is in read-only (archived statue), its images used base image of `alpine:3.7`, and are 4 years old now, vulnerabilities in its image, which is risk to use it. 

This repo will manage with latest alpine version, but must pass the trivy scan. 

## Usage

```console
$ docker run --rm alpine/curl -fsSL https://www.google.com/
```

Or use it as alias command

```
$ alias curl="docker run --rm alpine/curl"

$ curl -fsSL https://www.google.com/
```

## Tags

* `alpine/curl:8.1.2`: based on `curl` version

## Scan passed

The image is passed the trivy scan, you can run command to confirm

```
$ docker run --rm -v /var/run/docker.sock:/var/run/docker.sock \
    -v $HOME/Library/Caches:/root/.cache/  aquasec/trivy image alpine/curl

...
================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)
```
