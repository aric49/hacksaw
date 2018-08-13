FROM alpine:3.8
MAINTAINER Aric Renzo - aricrenzo@gmail.com

RUN apk update --no-cache &&\
    apk add --no-cache curl bind-tools jq util-linux iputils drill vim nmap htop tcpdump tmux git openssl netcat-openbsd &&\
    apk add --no-cache hping3 --update-cache --repository http://dl-cdn.alpinelinux.org/alpine/edge/testing

COPY scripts/* /usr/local/bin/
RUN chmod +x /usr/local/bin/* &&\
    mkdir /workdir

WORKDIR /workdir

ENTRYPOINT ["/bin/sh"]
