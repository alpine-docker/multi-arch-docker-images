#!/bin/sh

# Check if a command was passed as an argument
if [ $# -eq 0 ]; then
    echo "No command provided. Exiting."
    exit 1
fi

# Execute the provided command
exec "$@"
