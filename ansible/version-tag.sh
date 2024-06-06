#!/usr/bin/env bash

curl -H "Cache-Control: no-cache" -sL "https://raw.githubusercontent.com/alpine-docker/multi-arch-docker-images/stable/functions.sh" -o functions.sh
source functions.sh

image="alpine/ansible"

# 2.29
version=$(docker run -ti --rm ${image} ansible --version |awk '$1=$1' |awk -F '[\]\[ ]' '/core/{print $4}')
echo $version

install_crane
./crane copy ${image} ${image}:${version}
