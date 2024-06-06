# httpie

[If enjoy, please consider buying me a coffee.](https://www.buymeacoffee.com/ozbillwang)

httpie running in docker alpine (python3+pip3+alpine+httpie)

Auto-trigger docker build for [httpie](https://github.com/jakubroztocil/httpie) when new release is announced

[![DockerHub Badge](http://dockeri.co/image/alpine/httpie)](https://hub.docker.com/r/alpine/httpie/)

### Additional notes on multi-arch images

This feature was added on June 25th, 2023.

- Versions v3.2.2 and above are built with multi-arch support (`--platform linux/amd64, linux/arm/v7, linux/arm64/v8, linux/arm/v6, linux/ppc64le, linux/s390x`).
- I only provide support for the `linux/amd64` platform since I don't have an environment to test other platforms. If you encounter any issues with other architectures, please submit a pull request to address them.
- There will be no difference when using the docker pull and docker run commands with other architectures; you can use them as you normally would. For instance, if you need to pull an image for the ARM architecture (such as the new Mac M1 chip), you can run `docker pull alpine/httpie:3.2.2` to directly obtain the image.

### Github Repo

https://github.com/alpine-docker/multi-arch-docker-images/tree/master/httpie

### Daily CI build logs

Docker images are built together:

https://app.circleci.com/pipelines/github/alpine-docker/multi-arch-docker-images

Image list:

https://github.com/alpine-docker/multi-arch-docker-images/tree/master#image-details

### Docker image tags

https://hub.docker.com/r/alpine/httpie/tags/

### Usage

```bash
$ alias http='docker run -ti --rm alpine/httpie'
$ alias https='docker run -ti --rm --entrypoint=https alpine/httpie'
```

To use and persist a [`.netrc`](https://httpie.org/docs#netrc) file:

```bash
$ alias http='docker run -ti --rm -v ~/.netrc:/root/.netrc alpine/httpie'
$ alias https='docker run -ti --rm -v ~/.netrc:/root/.netrc --entrypoint=https alpine/httpie'
```

A `.netrc` file must exist at `~` on the host.

`/root/.netrc` is used because httpie is run as root in the container, and it
looks to the user's home directory (`/root`) for the `.netrc` file.

To use and persist a [`.httpie`](https://httpie.org/docs#config) configuration
directory:

```bash
$ alias http='docker run -ti --rm -v ~/.httpie:/root/.httpie alpine/httpie'
$ alias https='docker run -ti --rm -v ~/.httpie:/root/.httpie --entrypoint=https alpine/httpie'
```

The `~/.httpie` directory on the host will be created automatically if it does
not exist already. You will notice a `~/.httpie/config.json` is created by
httpie if one did not exist.

This will create a temporary alias. In order to make it persist reboots,
you can append this exact line to your `~/.bashrc` (or similar) like this:

```bash
$ alias http >> ~/.bashrc
$ alias https >> ~/.bashrc
```

Running HTTPie is as simple as invoking it like this:

> _From [the official examples](https://github.com/jakubroztocil/httpie#examples):_

Hello World:

```bash
$ https httpie.io/hello
```

Custom [HTTP method](https://httpie.io/docs#http-method), [HTTP headers](https://httpie.io/docs#http-headers) and [JSON](https://httpie.io/docs#json) data:

```bash
$ http PUT example.org X-API-Token:123 name=John
```

Submitting forms:

```bash
$ http -f POST example.org hello=World
```

Upload a file using redirected input:

```bash
$ http example.org < file.json
```

Download a file and save it via redirected output:

```bash
$ http example.org/file > file
```

You can supply any number of [HTTPie arguments](https://github.com/jakubroztocil/httpie#readme)
that will be passed through unmodified.

### Help

HTTPie has a fairly [extensive documentation](https://github.com/jakubroztocil/httpie#readme) available.
Also, you can use its included help output:

```bash
$ http --help
```

### The Processes to build these images

- Enable CI cronjob on this repo to run build regularly on master branch (Weekly)
- Build and push the images with latest version
- Run the latest image locally and get the application version
- Tag the image with the version, from previous step
- push the image with version via tool called [crane](https://github.com/google/go-containerregistry/blob/main/cmd/crane/doc/crane.md)
