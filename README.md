# multi-arch-docker-images

### Why we need it

* Mostly it is used during CI/CD (continuous integration and continuous delivery) or as part of an automated build/deployment
* mutli-arch images supported, so you can easily run it on most OSs with same `docker pull/run` commands

![image](https://github.com/alpine-docker/multi-arch-docker-images/assets/8954908/18574160-0e30-4570-8fec-3dca2703f582)


### supported images

* [links](http://links.twibright.com/user_en.html) - open source text and graphic web browser
* [lynx](https://lynx.invisible-island.net/) - The Text Web-Browser
* [curl](https://curl.se/) - command line tool for transferring data with URLs
* [mysql](https://dev.mysql.com/doc/refman/8.0/en/mysql.html) - The MySQL Command-Line Client
* [psql](https://www.postgresguide.com/utilities/psql/) - a terminal-based front-end to PostgreSQL
* [trivy](https://github.com/aquasecurity/trivy) - Find vulnerabilities, misconfigurations, secrets, SBOM in containers, Kubernetes, code repositories, clouds and more
* [semver](https://semver.org/) - The semantic version parser
* [socat](https://linux.die.net/man/1/socat) - a multipurpose relay tool for Linux
* [httpie](https://httpie.io/) - make CLI interaction with web services as human-friendly as possible
* [mongosh](https://www.mongodb.com/) - The Mongo Command-Line Client
* [ansible](https://www.ansible.com/) - an open-source automation tool that allows you to automate tasks, configuration management, and application deployment.

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
| [socat](https://linux.die.net/man/1/socat)                                                                                                          | https://github.com/alpine-docker/multi-arch-libs/tree/master/socat | https://app.circleci.com/pipelines/github/alpine-docker/multi-arch-libs | https://hub.docker.com/repository/docker/alpine/socat/tags | linux/arm/v7,linux/arm64/v8,linux/arm/v6,linux/amd64,linux/ppc64le,linux/s390x |
| [httpie](https://httpie.io/)                                                                                                          | https://github.com/alpine-docker/multi-arch-libs/tree/master/httpie | https://app.circleci.com/pipelines/github/alpine-docker/multi-arch-libs | https://hub.docker.com/repository/docker/alpine/httpie/tags | linux/arm/v7,linux/arm64/v8,linux/arm/v6,linux/amd64,linux/ppc64le,linux/s390x |
| [mongosh](https://www.mongodb.com/)                                                                                                    | https://github.com/alpine-docker/multi-arch-libs/tree/master/mongosh| https://app.circleci.com/pipelines/github/alpine-docker/multi-arch-libs | https://hub.docker.com/repository/docker/alpine/mongosh/tags | linux/arm/v7,linux/arm64/v8,linux/amd64,linux/ppc64le |
| [ansible](https://www.ansible.com/)                                                                                                    | https://github.com/alpine-docker/multi-arch-libs/tree/master/ansible| https://app.circleci.com/pipelines/github/alpine-docker/multi-arch-libs | https://hub.docker.com/repository/docker/alpine/ansible/tags | linux/arm/v7,linux/arm64/v8,linux/arm/v6,linux/amd64,linux/ppc64le,linux/s390x |
| [flake8](https://flake8.pycqa.org/en/latest/)                                                                                                    | https://github.com/alpine-docker/multi-arch-libs/tree/master/flake8| https://app.circleci.com/pipelines/github/alpine-docker/multi-arch-libs | https://hub.docker.com/repository/docker/alpine/flake8/tags | linux/arm/v7,linux/arm64/v8,linux/arm/v6,linux/amd64,linux/ppc64le,linux/s390x |

### Usage

There are simple usages in its application folders, but recommend to get help from application's offical documents.


### The Processes to build these images

* Enable CI cronjob on this repo to run build regularly on master branch (Weekly)
* Build and push the images with latest version
* Run the latest image locally and get the application version
* Tag the image with the version, from previous step
* push the image with versions via tool called [crane](https://github.com/google/go-containerregistry/blob/main/cmd/crane/doc/crane.md)
