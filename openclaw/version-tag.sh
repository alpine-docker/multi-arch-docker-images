#!/usr/bin/env bash

curl -H "Cache-Control: no-cache" -sL "https://raw.githubusercontent.com/alpine-docker/multi-arch-docker-images/stable/functions.sh" -o functions.sh
source functions.sh

image="alpine/openclaw"

# 2026.1.29
version=$(docker run --rm ${image} /app/openclaw.mjs --version)

install_crane
./crane copy ${image} ${image}:${version}
