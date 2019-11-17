#!/bin/bash

# start-docker.sh

set -e

IMAGE_NAME="mmcl_rocm"


# start bash
docker run --rm --privileged -v ${PWD}:/data \
  --device=/dev/kfd --device=/dev/dri\
  $IMAGE_NAME mmcl $@
