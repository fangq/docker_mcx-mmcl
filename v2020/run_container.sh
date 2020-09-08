#!/bin/sh

IMAGE_NAME="fangqq/mcx:v2020"
docker run --rm --gpus all -v ${PWD}:/data $IMAGE_NAME mcx $@
