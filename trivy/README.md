trivy — Find vulnerabilities, misconfigurations, secrets, SBOM in containers, Kubernetes, code repositories, clouds and more

### source of `Dockerfile`

https://github.com/alpine-docker/multi-arch-libs/blob/master/trivy/Dockerfile

### Daily CI build logs

N/A

### Docker image tags

https://hub.docker.com/repository/docker/alpine/trivy/tags


### quick start

```
alias trivy="docker run -ti --rm alpine/trivy"

trivy image alpine/curl
```

### official documents

The official installation script has bug and I have reported via https://github.com/aquasecurity/trivy/discussions/4746

https://raw.githubusercontent.com/aquasecurity/trivy/main/contrib/install.sh

supported platform, ref [build_trivy.sh](build_trivy.sh)

"linux/386,linux/amd64,linux/arm64,linux/ppc64le,linux/s390x"
