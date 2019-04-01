FROM ubuntu:latest

RUN apt-get update \
	&& apt-get install -y nginx

RUN mkdir -p /etc/letsencrypt/wt6.ephec-ti.be

COPY wt6.ephec-ti.be /etc/nginx/sites-available

COPY wt6-certificate.key /etc/letsencrypt/wt6.ephec-ti.be/
COPY wt6-certificate.crt /etc/letsencrypt/wt6.ephec-ti.be/

COPY default.conf /etc/nginx/conf.d/default.conf
COPY index.html /usr/share/nginx/html/index.html

EXPOSE 80 443
