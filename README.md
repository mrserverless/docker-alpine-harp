# Docker Alphine Harp

[![Docker Repository on Quay.io](https://quay.io/repository/yunspace/alphine-harp/status "Docker Repository on Quay.io")](https://quay.io/repository/yunspace/alphine-harp)

Minimal [HarpJS](harpjs.com) Microcontainer leveraging the [Alphine Linux](https://github.com/gliderlabs/docker-alpine)

## Versions

* [0.17.0-squashed]() - squashed image at 127.4mb, prefect for base images
* [0.17.0]() - layered version at 271.8mb

## Base Docker Image

* [ficusio/nodejs-base](https://registry.hub.docker.com/u/ficusio/nodejs-base/)
* [alphine](https://registry.hub.docker.com/_/alpine/)

## Usage

Available on Quay.io

    docker run --rm quay.io/yunspace/alphine-harp:0.17.0 harp --version

or Docker Hub

    docker run --rm yunspace/alphine-harp:0.17.0 harp --version

## Node-Sass

Due to this issue https://github.com/sass/node-sass/issues/808, node-sass binary needs to be re-compiled for Alphine Linux.
Thus the size of the image is bigger due to build dependency packages such as `python, make and g++`
