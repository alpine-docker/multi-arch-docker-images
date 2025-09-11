# xml parser

### Github Repo

https://github.com/alpine-docker/multi-arch-docker-images/xml

### Daily Travis CI build logs

https://app.circleci.com/pipelines/github/alpine-docker/multi-arch-docker-images?branch=master

### Docker image tags

https://hub.docker.com/r/alpine/xml/tags/

### installed tools

- xmllint - command line XML tool (http://xmlsoft.org/xmllint.html)
- jq - jq is like sed for JSON data (https://stedolan.github.io/jq/)
- xq - Command-line XML processor (https://github.com/kislyuk/yq)

TAG is verison of `jq`

If you need other xml tools, let me know.

### Command samples


get `version` 

    docker run -ti --rm alpine/xml sh -c "curl -s https://raw.githubusercontent.com/codecov/example-java/master/pom.xml |xq .project.version"
    
exclude `version`

    docker run -ti --rm alpine/xml sh -c "curl https://raw.githubusercontent.com/codecov/example-java/master/pom.xml |xq 'del(.project.version)' --xml-output"

convert a local xml to json

    docker run -ti --rm -v $(pwd):/apps -w /apps alpine/xml sh -c "xq .< pom.xml"

For usage of `xmllint`, please go through its [homepage](http://xmlsoft.org/xmllint.html)
