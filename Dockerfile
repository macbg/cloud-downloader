FROM alpine

RUN apk add curl

COPY download.sh /usr/local/bin/download.sh