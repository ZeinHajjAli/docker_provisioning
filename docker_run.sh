#!/bin/bash

ImageName=${1:-"docker_prov:latest"}
ContainerName=${2:-"docker_prov"}

docker stop $ContainerName > /dev/null 2>&1
if [ $? -eq 0 ]; then
	echo "Successfully stopped the container $ContainerName"
else
	echo "No container named $ContainerName was running"
fi

docker rm $ContainerName > /dev/null 2>&1
if [ $? -eq 0 ]; then
	echo "Successfully removed the container $ContainerName"
else
	echo "No container named $ContainerName to remove"
fi

docker run -d --gpus all -p 8666:8888 -v "$(pwd)":/app --name $ContainerName $ImageName
