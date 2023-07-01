#!/usr/bin/env bash

curl -H "Cache-Control: no-cache" -sL "https://raw.githubusercontent.com/alpine-docker/multi-arch-libs/stable/functions.sh" -o functions.sh
source functions.sh

image="alpine/semver"

# 7.5.3
version=$(docker run -i --rm ${image}|head -1 |awk '{print $NF}')

install_crane
./crane copy ${image} ${image}:${version}
