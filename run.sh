#!/bin/bash

docker_container_name="learn-github-action-demo"
docker_image_name="nginx:stable"

# 先停止原来的
docker stop $container_name
docker rm $container_name

# 启动容器
docker run -d \
	-p 80:80 \
	-v $(pwd)/dist:/usr/share/nginx/html \
	--name $docker_container_name $image_name
