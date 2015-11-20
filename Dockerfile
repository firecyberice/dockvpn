FROM alpine:3.2
RUN apk update \
&& apk add \
openvpn \
iptables \
socat \
curl

COPY ./bin /usr/local/sbin

VOLUME /etc/openvpn

EXPOSE 443/tcp 1194/udp 8080/tcp

CMD run
