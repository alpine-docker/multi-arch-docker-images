#!/usr/bin/env bash

curl -H "Cache-Control: no-cache" -sL "https://raw.githubusercontent.com/alpine-docker/multi-arch-docker-images/stable/functions.sh" -o functions.sh
source functions.sh

image="alpine/flake8"

# 15.1
version=$(docker run --rm ${image} --version|head -1|awk '$1=$1' | awk '/flake8/{print $1}')

install_crane
./crane copy ${image} ${image}:${version}
