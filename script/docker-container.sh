#!/bin/bash

IMAGE_NAME='otternq/satis'
CONTAINER_NAME='satis-container'

docker images | grep $IMAGE_NAME || { echo "no $IMAGE_NAME image"; exit 1; }
docker ps | grep $CONTAINER_NAME && docker stop $CONTAINER_NAME
docker ps -a | grep $CONTAINER_NAME && docker rm $CONTAINER_NAME

docker run -d -P --name $CONTAINER_NAME $IMAGE_NAME
