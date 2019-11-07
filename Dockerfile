FROM alpine:latest

RUN apk update && apk upgrade \
  && apk add nodejs yarn \
  && npm install -g typescript

RUN mkdir /app

VOLUME /app