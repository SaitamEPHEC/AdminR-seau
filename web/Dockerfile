FROM nginx:alpine
COPY default.conf /etc/nginx/conf.d/default.conf
COPY index.html /usr/share/nginx/html/index.html

COPY wt6-certificate.key /usr/share/nginx/html/wt6-certificate.key
COPY wt6-certificate.crt /usr/share/nginx/html/wt6-certificate.crt
