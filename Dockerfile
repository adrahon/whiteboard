FROM alpine:3.4

MAINTAINER Alex Drahon <adrahon@gmail.com>

RUN apk add --update imagemagick && \
    rm -rf /var/cache/apk/*
COPY whiteboard.sh /bin/wb
WORKDIR /images

# usage docker run --rm -v "$(pwd)":/images whiteboard source.jpg destination.jpg
ENTRYPOINT ["wb"]
