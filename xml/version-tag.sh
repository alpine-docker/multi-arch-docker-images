#!/usr/bin/env bash

curl -H "Cache-Control: no-cache" -sL "https://raw.githubusercontent.com/alpine-docker/multi-arch-docker-images/stable/functions.sh" -o functions.sh
source functions.sh

image="alpine/mysql"

# jq --version
# jq-1.8.0
version=$(docker run --rm ${image} jq --version |awk '$1=$1' |awk -F "-" '{print $NF}')

install_crane
./crane copy ${image} ${image}:${version}
