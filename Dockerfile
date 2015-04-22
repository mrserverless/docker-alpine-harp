FROM ficusio/nodejs-base:0.12
MAINTAINER Yun Zhi Lin <yun@yunspace.com>

ENV NODE_ENV production

RUN apk --update add git python make g++
RUN npm install -g harp@0.17.0
RUN apk del git python make g++ && rm -rf /var/cache/apk/*

ENTRYPOINT ["harp"]
CMD ["--version"]
