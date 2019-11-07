FROM alpine:latest

RUN apk update && apk upgrade \
  && apk add nodejs npm yarn \
  && npm install -g typescript

RUN mkdir /app

VOLUME /app