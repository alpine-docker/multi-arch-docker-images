#!/usr/bin/env bash

curl -H "Cache-Control: no-cache" -sL "https://raw.githubusercontent.com/alpine-docker/multi-arch-libs/stable/functions.sh" -o functions.sh
source functions.sh

image="alpine/trivy"

# 0.43.0
version=$(docker run -ti --rm trivy -v |awk '/Version/{print $2}' |sed 's/\r//g')

install_crane
./crane copy ${image} ${image}:${version}
