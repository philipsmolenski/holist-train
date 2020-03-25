#!/bin/bash
set -x

docker build -f Dockerfile -t "$2" .
docker run --gpus '"device='"$1"'"' -v /home/zpp/deephol-data:/home/data "$2"
