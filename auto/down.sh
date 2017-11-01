#! /bin/bash -e

if [ "$(docker ps -q -f name=meeting-client)" ]; then
    docker rm -f meeting-client
fi