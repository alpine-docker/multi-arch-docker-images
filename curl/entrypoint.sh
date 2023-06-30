#!/bin/sh
set -e

# Prepend "curl" if the first argument is not an executable
if ! type -- "$1" &> /dev/null; then
	set -- curl "$@"
fi

exec "$@"
