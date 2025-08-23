#!/usr/bin/env bash

curl -H "Cache-Control: no-cache" -sL "https://raw.githubusercontent.com/alpine-docker/multi-arch-docker-images/stable/functions.sh" -o functions.sh
source functions.sh

image="alpine/snmpsimulator"

# snmpsimd --version
# SNMP Simulator version 1.1.7, written by Ilya Etingof <etingof@gmail.com> Using foundation libraries: pysmi 1.6.2, pysnmp 6.2.6, pyasn1 0.6.1. Python interpreter: 3.12.11 (main, Aug 13 2025,
# 10:45:18) [GCC 14.2.0] Documentation and support at https://www.pysnmp.com/snmpsim
version=$(docker run --rm ${image} snmpsimd --version |awk '/SNMP Simulator/{print $4}' | tr -d ',')

install_crane
./crane copy ${image} ${image}:${version}
