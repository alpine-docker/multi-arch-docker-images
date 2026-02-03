#!/usr/bin/env bash

curl -H "Cache-Control: no-cache" -sL "https://raw.githubusercontent.com/alpine-docker/multi-arch-docker-images/stable/functions.sh" -o functions.sh
source functions.sh

image="alpine/bruno"

docker images
docker pull $image
docker images

# 1.16.0
version=$(docker run --rm ${image} --version |awk '$1=$1' | sed 's/\r//g')

install_crane
./crane copy ${image} ${image}:${version}
