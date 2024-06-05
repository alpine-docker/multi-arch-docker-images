# Bruno

[If enjoy, please consider buying me a coffee.](https://www.buymeacoffee.com/ozbillwang)

Bruno cli running in docker alpine (Node+Alpine+Bruno)

Auto-trigger docker build for [bruno cli](https://github.com/usebruno/bruno) when new release is announced

[![DockerHub Badge](http://dockeri.co/image/alpine/bruno)](https://hub.docker.com/r/alpine/bruno/)

### Github Repo

https://github.com/alpine-docker/multi-arch-docker-images/tree/master/bruno

### Daily CI build logs

Docker images are built together:

https://app.circleci.com/pipelines/github/alpine-docker/multi-arch-libs

Image list:

https://github.com/alpine-docker/multi-arch-libs/tree/master#image-details

### Docker image tags

https://hub.docker.com/r/alpine/bruno/tags/

### Usage

```bash
# Assume your collections are in the current folder named 'collections' and the environment is DEV.
$ docker run -ti --rm -v "$(pwd)/collections":/apps -w /apps alpine/bruno run --env=DEV

Running Folder Recursively

{JSON} Placeholder (200 OK) - 149 ms
google.com (200 OK) - 239 ms
variables (200 OK) - 670 ms

Requests:    3 passed, 3 total
Tests:       0 passed, 0 total
Assertions:  0 passed, 0 total
```

### Help

Also, you can use its included help output:

```bash
$ docker run -ti --rm alpine/bruno --help
```

### The Processes to build these images

* Enable CI cronjob on this repo to run build regularly on master branch (Weekly)
* Build and push the images with latest version
* Run the latest image locally and get the application version
* Tag the image with the version, from previous step
* push the image with version via tool called [crane](https://github.com/google/go-containerregistry/blob/main/cmd/crane/doc/crane.md)
