FROM ubuntu:latest

RUN apt-get update && apt-get install -y bind9

WORKDIR /etc/bind

EXPOSE 53/tcp 53/udp

VOLUME /etc/bind

CMD ["/usr/sbin/named", "-g", "-c", "/etc/bind/named.conf", "-u", "bind"]
