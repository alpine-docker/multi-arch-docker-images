#!/usr/bin/env bash

set -x

curl -H "Cache-Control: no-cache" -sL "https://raw.githubusercontent.com/alpine-docker/multi-arch-docker-images/stable/functions.sh" -o functions.sh
source functions.sh

image="alpine/openclaw"

docker images
docker pull $image
docker images

# 2026.1.29
version=$(docker run --rm ${image} /app/openclaw.mjs --version)
echo $version

install_crane
./crane copy ${image} ${image}:${version}
