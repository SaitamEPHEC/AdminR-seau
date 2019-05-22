# Image Ubuntu 
FROM ubuntu:latest

# Installations des paquets
RUN apt update \ 
&& apt upgrade -y \
&& DEBIAN_FRONTEND=noninteractive apt install -y apache2 php php-mysql nano\
&& rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* \
&& apt-get update 

# Activer le mode Apache pour les certificats https
RUN a2enmod ssl

# Modification du fichier apache2.conf
COPY apache2.conf /etc/apache2/apache2.conf

# Mettre les fichiers de configuration des sites dans sites-available
COPY wt6.ephec-ti.be.conf /etc/apache2/sites-available/
COPY b2b.wt6.ephec-ti.be.conf /etc/apache2/sites-available/
COPY int.wt6.ephec-ti.be.conf /etc/apache2/sites-available/

# Mettre les fichiers de configuration des sites dans sites-enabled
RUN ln -s /etc/apache2/sites-available/wt6.ephec-ti.be.conf /etc/apache2/sites-enabled/
RUN ln -s /etc/apache2/sites-available/b2b.wt6.ephec-ti.be.conf /etc/apache2/sites-enabled/
RUN ln -s /etc/apache2/sites-available/int.wt6.ephec-ti.be.conf /etc/apache2/sites-enabled/

# Créer les répertoires pour placer les sites web dans /var/www
RUN mkdir -p /var/www/wt6.ephec-ti.be
RUN mkdir -p /var/www/b2b.wt6.ephec-ti.be
RUN mkdir -p /var/www/int.wt6.ephec-ti.be

# Placer les sites web dans /var/www
COPY vitrine.html /var/www/wt6.ephec-ti.be/index.html
COPY b2b.php /var/www/b2b.wt6.ephec-ti.be/index.php
COPY int.php /var/www/int.wt6.ephec-ti.be/index.php

# Création des répertoires pour les certificats HTTPS 
RUN mkdir -p /etc/letsencrypt/wt6.ephec-ti.be
RUN mkdir -p /etc/letsencrypt/b2b.wt6.ephec-ti.be

# Copie des certificats dans le répertoire adéquat
# Pour wt6.ephec-ti.be
COPY wt6/cert.pem /etc/letsencrypt/wt6.ephec-ti.be/
COPY wt6/privkey.pem /etc/letsencrypt/wt6.ephec-ti.be/
COPY wt6/chain.pem /etc/letsencrypt/wt6.ephec-ti.be/
COPY wt6/fullchain.pem /etc/letsencrypt/wt6.ephec-ti.be/
COPY options-ssl-apache.conf /etc/letsencrypt/

# Pour b2b.ephec-ti.be
COPY b2b/cert.pem /etc/letsencrypt/b2b.wt6.ephec-ti.be/
COPY b2b/privkey.pem /etc/letsencrypt/b2b.wt6.ephec-ti.be/
COPY b2b/chain.pem /etc/letsencrypt/b2b.wt6.ephec-ti.be/
COPY b2b/fullchain.pem /etc/letsencrypt/b2b.wt6.ephec-ti.be/

# Exposer les ports
EXPOSE 80 443

# Démarre Apache en avant-plan
CMD apachectl -DFOREGROUND

