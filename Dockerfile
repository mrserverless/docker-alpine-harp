FROM ficusio/nodejs-base:0.12

ENV NODE_ENV production

# get packages and install harp
RUN apk --update add git python make g++ && \
  npm install -g harp@0.17.0

# cleanup
RUN rm -rf harp && \
  apk del git python make g++ && \
  rm -rf /var/cache/apk/*

ENTRYPOINT ["harp"]
CMD ["--version"]
