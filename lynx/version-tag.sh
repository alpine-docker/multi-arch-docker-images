#!/usr/bin/env bash

curl -H "Cache-Control: no-cache" -sL "https://raw.githubusercontent.com/alpine-docker/multi-arch-docker-images/stable/functions.sh" -o functions.sh
source functions.sh

image="alpine/lynx"

version=$(docker run -ti --rm ${image} -version |awk '$1=$1' |awk '/Lynx Version/{print $3}')
# 2.8.9rel.1
version=$(echo $version |sed 's/rel.*//')

install_crane
./crane copy ${image} ${image}:${version}
