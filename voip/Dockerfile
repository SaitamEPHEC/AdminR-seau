FROM ubuntu:latest

RUN apt-get update && apt-get -y install asterisk

WORKDIR /etc/asterisk

COPY configs/extensions.conf /etc/asterisk/extensions.conf
COPY configs/iax.conf /etc/asterisk/iax.conf
COPY configs/sip.conf /etc/asterisk/sip.conf
COPY configs/users.conf /etc/asterisk/users.conf
COPY configs/voicemail.conf /etc/asterisk/voicemail.conf

RUN sed -i "s/rtpstart=10000/rtpstart=10000/g" /etc/asterisk/rtp.conf
RUN sed -i "s/rtpend=20000/rtpend=11000/g" /etc/asterisk/rtp.conf

EXPOSE 5060 5060/udp
EXPOSE 10000-11000/udp

CMD ["/usr/sbin/asterisk", "-f"]
