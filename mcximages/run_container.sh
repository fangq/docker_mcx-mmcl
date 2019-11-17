#!/bin/bash

# start-docker.sh

set -e

IMAGE_NAME="cuda8-mcx-devel"



# start bash
docker run --rm --gpus all -v ${PWD}:/data --privileged \
   $IMAGE_NAME mcx $@
