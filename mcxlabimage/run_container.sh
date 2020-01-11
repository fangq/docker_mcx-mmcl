#!/bin/bash

# start-docker.sh

set -e

IMAGE_NAME="mcxlab"



# start bash
docker run --rm -it --gpus all --privileged \
  --user root $IMAGE_NAME /bin/bash
