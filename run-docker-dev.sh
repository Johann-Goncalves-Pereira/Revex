#!/bin/sh

docker-compose -f ./build/docker-compose.yml down
docker-compose -f ./build/docker-compose.yml up --build
