#!/bin/bash
docker ps -a
docker rm -f webserver
docker rmi webserver:latest
docker build

echo "Build application"
cd ${PWD}/deployment
docker build -t webserver .

sleep 20

echo "deploy application"

docker run -dit --name webserver -p 8081:80 webserver:latest
