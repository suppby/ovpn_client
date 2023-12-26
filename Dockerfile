FROM alpine:3.19

RUN apk add --no-cache \
    bash \
    bind-tools \
    iptables \
    ip6tables \
    openvpn \
    nano \
    curl

COPY . /usr/local/bin/

ENTRYPOINT ["entry.sh"]
