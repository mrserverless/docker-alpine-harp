# Docker Alphine Harp

[![Docker Repository on Quay.io](https://quay.io/repository/yunspace/alphine-harp/status "Docker Repository on Quay.io")](https://quay.io/repository/yunspace/alphine-harp)

[HarpJS](harpjs.com) Microcontainer leveraging the minimalistic [Alphine Linux](https://github.com/gliderlabs/docker-alpine) docker image.

At less than 300MB, which is half the size of a typical Ubuntu/Debian based NodeJS + HarpJS image.

## Base Docker Image

* [ficusio/nodejs-base](https://registry.hub.docker.com/u/ficusio/nodejs-base/)
* [alphine](https://registry.hub.docker.com/_/alpine/)

## Usage

    docker run --rm -ti yunspace/alphine-harp:0.17.0
  
## Node-Sass

Due to this issue https://github.com/sass/node-sass/issues/808, node-sass binary needs to be re-compiled for Alphine Linux.
Thus the size of the image is bigger due to build dependency packages such as `python, make and g++`
