FROM alpine:latest

RUN apk update && apk upgrade \
  && apk add nodejs npm yarn \
  && npm install -g \
    gulp-cli \
    npx \
    typescript \
    webpack \
  && mkdir -p /usr/src/app

WORKDIR /usr/src/app

VOLUME /usr/src/app