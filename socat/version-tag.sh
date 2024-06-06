#!/usr/bin/env bash

curl -H "Cache-Control: no-cache" -sL "https://raw.githubusercontent.com/alpine-docker/multi-arch-docker-images/stable/functions.sh" -o functions.sh
source functions.sh

image="alpine/socat"

# 1.7.4.4
version=$(docker run -t --rm ${image} -V|awk '$1=$1' |awk '/socat version/{print $3}')

install_crane
./crane copy ${image} ${image}:${version}
