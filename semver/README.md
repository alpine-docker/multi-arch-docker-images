# alpine/semver

Docker image with [Semantic Versioning 2.0.0](https://semver.org/)

### Github Repo

https://github.com/alpine-docker/multi-arch-docker-images/blob/master/semver/Dockerfile

### Docker image tags

https://hub.docker.com/r/alpine/semver/tags/

### CI build logs

~~https://app.travis-ci.com/github/alpine-docker/semver~~
N/A

### Additional notes about multi-arch images

This feature was added on 21th April 2022.

- Newer vesions from now on (v7.3.7+) will be multi-arch images (`--platform linux/amd64,linux/arm/v7,linux/arm64/v8,linux/arm/v6,linux/ppc64le,linux/s390x`)

4. I don't support other architectures, except `amd64`, because I have no other environment to check. If you have any issues with other arch, you need raise PR to fix it.
5. There would be no difference for `docker pull` , `docker run` command with other arch, you can run it as normal. For example, if you need pull image from arm (such as new Mac M1 chip), you can run `docker pull alpine/semver` to get the image directly.

# Usage

```bash
$ docker run --rm alpine/semver semver -c -i minor 1.0.2
1.1.0

$ docker run --rm marcelocorreia/semver semver -c -i patch 1.1.0
1.1.1

$ docker run --rm marcelocorreia/semver semver -c -i minor $(git describe --tags --abbrev=0)
5.6.0
```

# Full Example in Makefile

- [Makefile](./Makefile)

```
RELEASE_TYPE ?= patch

CURRENT_VERSION := $(shell git ls-remote --tags | awk '{ print $$2}'| sort -nr | head -n1|sed 's/refs\/tags\///g')

ifndef CURRENT_VERSION
  CURRENT_VERSION := 0.0.0
endif

NEXT_VERSION := $(shell docker run --rm alpine/semver semver -c -i $(RELEASE_TYPE) $(CURRENT_VERSION))

current-version:
	@echo $(CURRENT_VERSION)

next-version:
	@echo $(NEXT_VERSION)

release:
	git checkout master;
	git tag $(NEXT_VERSION)
	git push --tags
```
