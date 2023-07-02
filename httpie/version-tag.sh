#!/usr/bin/env bash

curl -H "Cache-Control: no-cache" -sL "https://raw.githubusercontent.com/alpine-docker/multi-arch-libs/stable/functions.sh" -o functions.sh
source functions.sh

image="alpine/httpie"

# 3.2.2
version=$(docker run -ti --rm ${image} --version |awk '$1=$1' | sed 's/\r//g')

install_crane
./crane copy ${image} ${image}:${version}
