FROM alpine:3.15
LABEL maintainer="Andre Sartori <dev@aphtec.com.br>"
RUN apk add --no-cache openvpn iptables tzdata
ENV OPENVPN=/etc/openvpn
EXPOSE 1194/udp
ADD scripts/openvpn_start.sh /usr/local/bin/
RUN chmod a+x /usr/local/bin/openvpn_start.sh
CMD ["openvpn_start.sh"]
