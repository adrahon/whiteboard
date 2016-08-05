FROM alpine:3.4

MAINTAINER Alex Drahon <adrahon@gmail.com>

RUN apk add --update imagemagick && \
    rm -rf /var/cache/apk/*
COPY whiteboard.sh /bin/wb
WORKDIR /images

# usage docker run -v "$(pwd)":/images whiteboard wb source.jpg destination.jpg
CMD ["wb"]
