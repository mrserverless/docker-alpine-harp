# Docker Alphine Harp

[HarpJS](harpjs.com) Microcontainer built on [Alphine Linux](https://github.com/gliderlabs/docker-alpine) Docker base image.

At less than 300MB, this image is half the size of a typical NodeJS + HarpJS image.

### Node-Sass

Due to this issue https://github.com/sass/node-sass/issues/808, node-sass binary needs to be re-compiled for Alphine Linux.
Thus the size of the image is bigger due to build dependency packages such as `python, make and g++`
