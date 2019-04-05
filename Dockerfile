FROM alpine:3.9
LABEL maintainer="Aric Renzo - aricrenzo@gmail.com"

RUN apk update &&\
    apk add curl bind-tools jq util-linux iputils drill vim

COPY scripts/* /usr/local/bin/
RUN chmod +x /usr/local/bin/* &&\
    mkdir /workdir

WORKDIR /workdir

ENTRYPOINT ["/bin/sh"]
