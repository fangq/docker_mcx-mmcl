#!/bin/bash

# start-docker.sh

set -e

IMAGE_NAME="mcx-base"



# start bash
docker run --rm -it --gpus all -v ${PWD}:/data $CNAME --privileged \
  --user=root $IMAGE_NAME mcx $@
