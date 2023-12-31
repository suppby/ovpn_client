FROM alpine:3.19

RUN apk add --no-cache \
    bash \
    bind-tools \
    iptables \
    ip6tables \
    openvpn \
    nano \
    curl

COPY entry.sh /usr/local/bin/entry.sh
RUN ["chmod", "+x", "/usr/local/bin/entry.sh"]
ENTRYPOINT ["entry.sh"]
