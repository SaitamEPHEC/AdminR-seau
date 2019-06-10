FROM ubuntu:latest

RUN apt update -y && apt upgrade -y

RUN apt install postfix -y
RUN apt install nano -y
RUN mv /etc/postfix/main.cf /etc/postfix/main.cf.bk

RUN postmap /etc/postfix/virtual_mailbox_domains
RUN DEBIAN_FRONTEND=noninteractive apt-get install dovecot-core dovecot-imapd dovecot-pop3d dovecot-lmtpd -y
