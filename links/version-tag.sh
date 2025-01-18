#!/usr/bin/env bash

curl -H "Cache-Control: no-cache" -sL "https://raw.githubusercontent.com/alpine-docker/multi-arch-docker-images/stable/functions.sh" -o functions.sh
source functions.sh

image="alpine/links"

# 2.29
version=$(docker run --rm ${image} -version |awk '/Links/{print $2}'|sed 's/\r//g')
echo $version

install_crane
./crane copy ${image} ${image}:${version}
