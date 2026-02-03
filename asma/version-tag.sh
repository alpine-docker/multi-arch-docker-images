#!/usr/bin/env bash

curl -H "Cache-Control: no-cache" -sL "https://raw.githubusercontent.com/alpine-docker/multi-arch-docker-images/stable/functions.sh" -o functions.sh
source functions.sh

image="alpine/asma"

docker images
docker pull $image
docker images

# 15.1
#version=$(docker run --rm ${image} --version |awk '$1=$1' |awk '/mysql/{print $3}')
# currently This agent currently lacks version control, so I'm unable to run --version to retrieve the binary's version.
version=1.0.0

install_crane
./crane copy ${image} ${image}:${version}
