FROM alpine:3.4

LABEL maintainer "alihan93.93@gmail.com"

VOLUME ["/cache", "/data"]

RUN apk add --update \
        git \
        nodejs \
        python \
        make \
        g++ && \
    npm install -g node-gyp && \
    npm config set cache "/cache/npm" --global && \
    npm config set cache-min 100000000 --global && \
    rm -rf /var/cache/apk/*

WORKDIR /data