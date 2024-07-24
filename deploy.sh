#!/bin/bash

# Variables
CONTAINER_NAME="netflix-movie-catalog"
IMAGE_NAME="doramar97/netflix-movie-catalog:latest"

docker stop $CONTAINER_NAME || true
docker rm $CONTAINER_NAME || true

docker pull $IMAGE_NAME

# Run the new container
docker run \
  -d \
  -p 8080:8080 \
  --network netflix \
  --name netflix-movie-catalog \
  doramar97/netflix-movie-catalog:latest