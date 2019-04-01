server {
	listen 443 ssl http2;
	listen [::]:443 ssl http2;
	server_name w6.ephec-ti.be www.wt6.ephec-ti.be;

	ssl_certificate /etc/letsencrypt/wt6.ephec-ti.be/wt6-certificate.crt;
	ssl_certificate_key /etc/letsencrypt/wt6.ephec-ti.be/w61-certificate.key;

root /var/www/default/html/;
}
