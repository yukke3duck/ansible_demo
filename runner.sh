#!/bin/bash

set -e

IMAGE_NAME="ansible-dev-env"

# Build the image if it doesn't exist
if [[ "$(docker images -q ${IMAGE_NAME}:latest 2> /dev/null)" == "" ]]; then
  echo "Building docker image ${IMAGE_NAME}..."
  docker build -t ${IMAGE_NAME} .
fi

# Run the command in the container
docker run --rm -it \
  -v "$(pwd)":/work \
  --workdir /work \
  ${IMAGE_NAME} "$@"

