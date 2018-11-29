#!/bin/sh

docker stop helloworld
docker rm helloworld

docker rmi node:helloworld --force

docker build -t node:helloworld .
docker run -p 80:80 --name helloworld -d node:helloworld
