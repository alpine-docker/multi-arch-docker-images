#!/usr/bin/env bash

curl -H "Cache-Control: no-cache" -sL "https://raw.githubusercontent.com/alpine-docker/multi-arch-libs/stable/functions.sh" -o functions.sh
source functions.sh

image="alpine/curl"

# 8.1.2
version=$(docker run -ti --rm ${image} curl --version |awk '$1=$1'|awk '/curl/ {print $2}')

install_crane
./crane copy ${image} ${image}:${version}
