FROM ubuntu:latest

RUN apt update -y && apt upgrade -y

RUN apt install postfix -y
RUN apt install nano -y
RUN mv /etc/postfix/main.cf /etc/postfix/main.cf.bk

RUN DEBIAN_FRONTEND=noninteractive apt-get install dovecot-core dovecot-imapd dovecot-pop3d dovecot-lmtpd -y
RUN mkdir /var/mail/vhosts
RUN mkdir /var/mail/vhosts/wt6.ephec-ti.be
RUN groupadd -g 5000 vmail
RUN useradd -r -g vmail -u 5000 vmail -d /var/mail/vhosts -c "virtual mail user"
RUN chown -R vmail:vmail /var/mail/vhosts/

COPY 10-auth.conf /etc/dovecot/conf.d/10-auth.conf
COPY 10-mail.conf /etc/dovecot/conf.d/10-mail.conf
COPY 10-master.conf /etc/dovecot/conf.d/10-master.conf
COPY 10-ssl.conf /etc/dovecot/conf.d/10-ssl.conf
COPY auth-passwdfile.conf.ext /etc/dovecot/conf.d/auth-passwdfile.conf.ext
COPY dovecot-users /etc/dovecot/dovecot-users
COPY main.cf /etc/postfix/main.cf
COPY master.cf /etc/postfix/master.cf
COPY start.sh /etc/start.sh
COPY virtual_mailbox_domains /etc/postfix/virtual_mailbox_domains
COPY mailname /etc/mailname

RUN postmap /etc/postfix/virtual_mailbox_domains

EXPOSE 25 110 143 465 587 993 995

CMD /etc/start.sh
