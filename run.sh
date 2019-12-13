#!/usr/bin/env bash

mkdir -p export
docker container run -it --rm -v $PWD/export:/export dosbox-build:latest
