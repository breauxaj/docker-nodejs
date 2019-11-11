FROM alpine:latest

RUN apk update && apk upgrade \
  && apk add nodejs npm yarn \
  && npm install -g \
    gulp-cli \
    npx \
    typescript \
    webpack \
  && mkdir -p /usr/src/app

npm install gulp-cli -g
npm install gulp -D

WORKDIR /usr/src/app

VOLUME /usr/src/app