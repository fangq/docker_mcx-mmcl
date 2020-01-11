#!/bin/bash

# start-docker.sh

set -e

IMAGE_NAME="mcxlab"



# start bash
xhost +local:
docker run --rm -it --gpus all -v /tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY=unix$DISPLAY --privileged --user root $IMAGE_NAME /bin/bash -c "export HOME=$HOME; octave --force-gui"
