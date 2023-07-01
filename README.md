# multi-arch-libs

libs sharing for mutli-arch docker images

### supported images

* [links](http://links.twibright.com/user_en.html) - open source text and graphic web browser
* [lynx](https://lynx.invisible-island.net/) - The Text Web-Browser
* [curl](https://curl.se/) - command line tool for transferring data with URLs
* [mysql](https://dev.mysql.com/doc/refman/8.0/en/mysql.html) - The MySQL Command-Line Client
* [psql](https://www.postgresguide.com/utilities/psql/) - a terminal-based front-end to PostgreSQL
* [trivy](https://github.com/aquasecurity/trivy) - Find vulnerabilities, misconfigurations, secrets, SBOM in containers, Kubernetes, code repositories, clouds and more
* [semver](https://semver.org/) - The semantic version parser

### Image details

|                                                                                  Name                                                                                 | Github Repo and Code                                                | build logs                                                              | Docker image tags                                           | Multi-Arch                                                                     |
|:---------------------------------------------------------------------------------------------------------------------------------------------------------------------:|---------------------------------------------------------------------|-------------------------------------------------------------------------|-------------------------------------------------------------|--------------------------------------------------------------------------------|
| [links](http://links.twibright.com/user_en.html)                                                                           | https://github.com/alpine-docker/multi-arch-libs/tree/master/links  | https://app.circleci.com/pipelines/github/alpine-docker/multi-arch-libs | https://hub.docker.com/repository/docker/alpine/links/tags  | linux/arm/v7,linux/arm64/v8,linux/arm/v6,linux/amd64,linux/ppc64le,linux/s390x |
| [lynx](https://lynx.invisible-island.net/)                                                                                                     | https://github.com/alpine-docker/multi-arch-libs/tree/master/lynx   | https://app.circleci.com/pipelines/github/alpine-docker/multi-arch-libs | https://hub.docker.com/repository/docker/alpine/lynx/tags   | linux/arm/v7,linux/arm64/v8,linux/arm/v6,linux/amd64,linux/ppc64le,linux/s390x |
| [curl](https://curl.se/)                                                                                          | https://github.com/alpine-docker/multi-arch-libs/tree/master/curl   | https://app.circleci.com/pipelines/github/alpine-docker/multi-arch-libs | https://hub.docker.com/repository/docker/alpine/curl/tags   | linux/arm/v7,linux/arm64/v8,linux/arm/v6,linux/amd64,linux/ppc64le,linux/s390x |
| [mysql](https://dev.mysql.com/doc/refman/8.0/en/mysql.html)                                                                           | https://github.com/alpine-docker/multi-arch-libs/tree/master/mysql  | https://app.circleci.com/pipelines/github/alpine-docker/multi-arch-libs | https://hub.docker.com/repository/docker/alpine/mysql/tags  | linux/arm/v7,linux/arm64/v8,linux/arm/v6,linux/amd64,linux/ppc64le,linux/s390x |
| [psql](https://www.postgresguide.com/utilities/psql/)                                                                      | https://github.com/alpine-docker/multi-arch-libs/tree/master/psql   | https://app.circleci.com/pipelines/github/alpine-docker/multi-arch-libs | https://hub.docker.com/repository/docker/alpine/psql/tags   | linux/arm/v7,linux/arm64/v8,linux/arm/v6,linux/amd64,linux/ppc64le,linux/s390x |
| [trivy](https://github.com/aquasecurity/trivy) | https://github.com/alpine-docker/multi-arch-libs/tree/master/trivy  | https://app.circleci.com/pipelines/github/alpine-docker/multi-arch-libs | https://hub.docker.com/repository/docker/alpine/trivy/tags  | linux/386,linux/amd64,linux/arm64,linux/ppc64le,linux/s390x                    |
| [semver](https://semver.org/)                                                                                                          | https://github.com/alpine-docker/multi-arch-libs/tree/master/semver | https://app.circleci.com/pipelines/github/alpine-docker/multi-arch-libs | https://hub.docker.com/repository/docker/alpine/semver/tags | linux/arm/v7,linux/arm64/v8,linux/arm/v6,linux/amd64,linux/ppc64le,linux/s390x |

### Usage

There are simple usages in its application folders, but recommend to get help from application's offical documents.

### Why we need it

Mostly it is used during CI/CD (continuous integration and continuous delivery) or as part of an automated build/deployment

### The Processes to build these images

* Enable CI cronjob on this repo to run build regularly on master branch (Weekly)
* Build and push the images with latest version
* Run the latest image locally and get the application version
* Tag the image with the version, from previous step
* push the image with version via tool called [crane](https://github.com/google/go-containerregistry/blob/main/cmd/crane/doc/crane.md)
