FROM ubuntu:latest

RUN apt update -y && apt upgrade -y

RUN apt install postfix -y
RUN apt install nano -y
RUN mv /etc/postfix/main.cf /etc/postfix/main.cf.bk

RUN postmap /etc/postfix/virtual_mailbox_domains
RUN DEBIAN_FRONTEND=noninteractive apt-get install dovecot-core dovecot-imapd dovecot-pop3d dovecot-lmtpd -y
RUN mkdir /var/mail/vhosts
RUN mkdir /var/mail/vhosts/wt6.ephec-ti.be
RUN groupadd -g 5000 vmail
RUN useradd -r -g vmail -u 5000 vmail -d /var/mail/vhosts -c "virtual mail user"
RUN chown -R vmail:vmail /var/mail/vhosts/
