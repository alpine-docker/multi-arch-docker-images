#!/usr/bin/env bash

curl -H "Cache-Control: no-cache" -sL "https://raw.githubusercontent.com/alpine-docker/multi-arch-libs/stable/functions.sh" -o functions.sh
source functions.sh

image="alpine/psql"

# 15.1
version=$(docker run -ti --rm ${image} --version |awk '$1=$1' |awk '/psql/{print $3}')

install_crane
./crane copy ${image} ${image}:${version}
