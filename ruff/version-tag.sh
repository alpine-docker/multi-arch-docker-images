#!/usr/bin/env bash

curl -H "Cache-Control: no-cache" -sL "https://raw.githubusercontent.com/alpine-docker/multi-arch-libs/stable/functions.sh" -o functions.sh
source functions.sh

image="alpine/ruff"

version=$(docker run -ti --rm ${image} --version | head -n 1 | awk '/ruff/{print $2}')

install_crane
./crane copy ${image} ${image}:${version}
