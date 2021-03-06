#!/bin/sh

IMAGE_NAME=aioc-github-io

docker build -t "$IMAGE_NAME" . &&
docker run --rm -it -p 4000:4000 --name "$IMAGE_NAME" -v "$PWD:/srv/jekyll:ro" "$IMAGE_NAME" "$@"
