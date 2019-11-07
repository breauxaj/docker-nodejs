FROM alpine:latest

RUN apk update && apk upgrade \
  && apk add nodejs yarn

RUN mkdir /app

VOLUME /app