# Docker Alphine Harp

[![Docker Repository on Quay.io](https://quay.io/repository/yunspace/alphine-harp/status "Docker Repository on Quay.io")](https://quay.io/repository/yunspace/alphine-harp)

Minimal [HarpJS](http://harpjs.com) Microcontainer leveraging the [Alphine Linux](https://github.com/gliderlabs/docker-alpine)

## Versions

* [0.17.0-squashed](https://quay.io/repository/yunspace/alphine-harp?tag=0.17.0-squashed) - squashed image at 127.4mb, prefect for base images
* [0.17.0](https://quay.io/repository/yunspace/alphine-harp?tag=0.17.0) - layered version at 291.8mb

## Base Docker Image

* [ficusio/nodejs-base](https://registry.hub.docker.com/u/ficusio/nodejs-base/)
* [alphine](https://registry.hub.docker.com/_/alpine/)

## Usage

From Quay.io

    docker run --rm quay.io/yunspace/alphine-harp:0.17.0-squashed harp --version

or Docker Hub

    docker run --rm yunspace/alphine-harp:0.17.0-squashed harp --version

## Why Squash?

Due to this Node-Sass/Alphine Linux issue https://github.com/sass/node-sass/issues/808, node-sass binary needs to be re-compiled.
Dependency packages such as `python, make and g++` are pulled down to build `node-sass`, therefore they need to be cleaned up and squashed using:

    docker export <layered container> | docker import – <squashed image>
