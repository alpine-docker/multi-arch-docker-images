# black
Auto-trigger docker build for [black](https://black.readthedocs.io/en/stable) when new release is announced

Multi-arch supported (linux/arm/v7,linux/arm64/v8,linux/arm/v6,linux/amd64,linux/ppc64le,linux/s390x)


### Repo:

https://github.com/alpine-docker/multi-arch-libs/blob/master/black/Dockerfile

### Daily build logs:

Docker images are built together:

https://app.circleci.com/pipelines/github/alpine-docker/multi-arch-libs

Image list:

https://github.com/alpine-docker/multi-arch-libs/tree/master#image-details

### Docker iamge tags:

https://hub.docker.com/r/alpine/black/tags/

# Usage:

    # must mount the local folder to /apps in container.
    docker run -ti --rm -v $(pwd):/apps alpine/black local_file.py

    # run flake8 container as command
    alias black="docker run -ti --rm -v $(pwd):/apps alpine/black"
    black --help
    black local_file.py

# The Processes to build this image

* Enable CI cronjob on this repo to run build regularly on master branch (Weekly)
* Build and push the images with latest version
* Run the latest image locally and get the application version
* Tag the image with the version, from previous step
* push the image with version via tool called [crane](https://github.com/google/go-containerregistry/blob/main/cmd/crane/doc/crane.md)
