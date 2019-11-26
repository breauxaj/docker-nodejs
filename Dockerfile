FROM breauxaj/alpine:latest

RUN apk add nodejs npm yarn \
  && npm install -g \
    gulp-cli \
    npx \
    typescript \
    webpack \
  && rm -rf /var/cache/apk/* \
  && mkdir -p /usr/src/app

WORKDIR /usr/src/app

VOLUME /usr/src/app