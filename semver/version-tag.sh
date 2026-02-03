#!/usr/bin/env bash

curl -H "Cache-Control: no-cache" -sL "https://raw.githubusercontent.com/alpine-docker/multi-arch-docker-images/stable/functions.sh" -o functions.sh
source functions.sh

image="alpine/semver"

docker images
docker pull $image
docker images

# 7.5.3
version=$(docker run -i --rm ${image}|head -1 |awk '{print $NF}')

install_crane
./crane copy ${image} ${image}:${version}
