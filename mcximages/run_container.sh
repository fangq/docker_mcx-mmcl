#!/bin/bash

# start-docker.sh

set -e

IMAGE_NAME="yuhui11/mcx"



# start bash
docker run --rm --gpus all -v ${PWD}:/data --privileged \
   $IMAGE_NAME mcx $@
