#!/usr/bin/env bash

curl -H "Cache-Control: no-cache" -sL "https://raw.githubusercontent.com/alpine-docker/multi-arch-docker-images/stable/functions.sh" -o functions.sh
source functions.sh

image="alpine/kubectl"

docker images
docker pull $image
docker images

# 1.33.3
version=$(docker run --rm ${image} version --client --output=json | jq -r '.clientVersion.gitVersion' | sed 's/^v//')
echo $version

install_crane
./crane copy ${image} ${image}:${version}
