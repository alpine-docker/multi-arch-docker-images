#!/usr/bin/env bash

curl -H "Cache-Control: no-cache" -sL "https://raw.githubusercontent.com/alpine-docker/multi-arch-docker-images/stable/functions.sh" -o functions.sh
source functions.sh

image="alpine/openssl"

# 1.1.1g
version=$(docker run --rm ${image} version |awk '$1=$1' |awk '/OpenSSL/{print $2}')

install_crane
./crane copy ${image} ${image}:${version}
