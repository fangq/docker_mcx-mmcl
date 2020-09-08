#!/bin/bash

# build-docker.sh

set -e

# get workflow+container name
IMAGE_NAME="mcx"

# build container
docker build -f ./Dockerfile.mcx .  -t $IMAGE_NAME
