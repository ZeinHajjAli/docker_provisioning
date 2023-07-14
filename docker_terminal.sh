#!/bin/bash

ContainerName=${1:-"docker_prov"}

docker exec -it $ContainerName bash
