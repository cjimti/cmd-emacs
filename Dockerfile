FROM alpine

RUN apk --no-cache add ca-certificates
RUN apk update
RUN apk add emacs
ENV TERM=xterm-256color

RUN mkdir -p /src
WORKDIR /src

ENTRYPOINT ["/usr/bin/emacs"]