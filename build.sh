#!/usr/bin/env bash

# Prerequisite
# Make sure you set secret enviroment variables in CI
# DOCKER_USERNAME
# DOCKER_PASSWORD

# usage
set -e

Usage() {
  echo "$0 <image_name>"
}

pushd $1
image="alpine/$1"
platform="linux/arm/v7,linux/arm64/v8,linux/arm/v6,linux/amd64,linux/ppc64le,linux/s390x" 

curl -H "Cache-Control: no-cache" -sL "https://raw.githubusercontent.com/alpine-docker/multi-arch-libs/stable/functions.sh" -o functions.sh
source functions.sh

tag="latest"
build_arg="VERSION=${tag}"

echo "build image for ${tag}"
docker buildx rm -f mybuilder-${image} || echo "ok"
build_docker_image "${tag}" "${image}" "${platform}" "${build_arg}"
