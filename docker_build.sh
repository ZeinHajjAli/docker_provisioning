#!/bin/bash

ImageName=${1:-"docker_prov"}

docker build -t $ImageName -f Dockerfile .

docker image prune -f
