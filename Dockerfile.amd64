FROM alpine:3.5

RUN apk --update --no-cache add \
    curl \
    iptables \
    openssl \
    openvpn \
    socat

COPY ./bin /usr/local/sbin

VOLUME /etc/openvpn
EXPOSE 443/tcp 1194/udp 8080/tcp
CMD run
