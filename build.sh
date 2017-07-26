#!/bin/bash

docker build -t registry/os:7.3b . || exit 1
docker push registry/os:7.3b || exit 2