#!/usr/bin/env bash

curl -H "Cache-Control: no-cache" -sL "https://raw.githubusercontent.com/alpine-docker/multi-arch-libs/stable/functions.sh" -o functions.sh
source functions.sh

image="alpine/mongosh"

# 1.10.1
version=$(docker run -ti --rm ${image} mongosh --version | sed 's/\r//g')

install_crane
./crane copy ${image} ${image}:${version}
