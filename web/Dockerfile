FROM nginx:alpine
COPY default.conf /etc/nginx/conf.d/default.conf
COPY index.html /usr/share/nginx/html/index.html

RUN mkdir -p /etc/letsencrypt/wt6.ephec-ti.be

COPY wt6-certificate.key /etc/letsencrypt/wt6.ephec-ti.be/
COPY wt6-certificate.crt /etc/letsencrypt/wt6.ephec-ti.be/
