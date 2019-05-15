# Image Ubuntu 
FROM ubuntu:16.04

# Installations des paquets
RUN apt-get update \ 
&& apt-get -y upgrade \
&& DEBIAN_FRONTEND=noninteractive apt-get -y install \
apache2 php7.0 php7.0-mysql libapache2-mod-php7.0 curl lynx-cur \
&& apt-get install -y --no-install-recommends apt-utils \
&& apt-get install -y apache2 \
&& apt-get clean \ 
&& rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* \
&& apt-get update 

# Activer les mods Apache
RUN a2enmod php7.0
RUN a2enmod rewrite

# Modification du fichier apache2.conf
COPY apache2.conf /etc/apache2/apache2.conf

# Mettre les fichiers de configuration des sites dans sites-available
COPY wt6.ephec-ti.be.conf /etc/apache2/sites-available/
COPY b2b.wt6.ephec-ti.be.conf /etc/apache2/sites-available/
COPY erp.wt6.ephec-ti.be.conf /etc/apache2/sites-available/

# Mettre les fichiers de configuration des sites dans sites-enabled
RUN ln -s /etc/apache2/sites-available/wt6.ephec-ti.be.conf /etc/apache2/sites-enabled/
RUN ln -s /etc/apache2/sites-available/b2b.wt6.ephec-ti.be.conf /etc/apache2/sites-enabled/
RUN ln -s /etc/apache2/sites-available/erp.wt6.ephec-ti.be.conf /etc/apache2/sites-enabled/

# Créer les répertoires pour placer les sites web dans /var/www
RUN mkdir -p /var/www/wt6.ephec-ti.be
RUN mkdir -p /var/www/b2b.wt6.ephec-ti.be
RUN mkdir -p /var/www/erp.wt6.ephec-ti.be

# Placer les sites web dans /var/www
COPY vitrine.html /var/www/wt6.ephec-ti.be/
COPY b2b.php /var/www/b2b.wt6.ephec-ti.be/
COPY erp.php /var/www/erp.wt6.ephec-ti.be/

# Renommer les sites web en index.html ou index.php
RUN mv /var/www/wt6.ephec-ti.be/vitrine.html /var/www/wt6.ephec-ti.be/index.html
RUN mv /var/www/b2b.wt6.ephec-ti.be/b2b.php /var/www/b2b.wt6.ephec-ti.be/index.php
RUN mv /var/www/erp.wt6.ephec-ti.be/erp.php /var/www/erp.wt6.ephec-ti.be/index.php

# Création des répertoires pour les certificats HTTPS 
RUN mkdir -p /etc/letsencrypt/wt6.ephec-ti.be

# Copie des certificats dans le répertoire adéquat
COPY cert.pem /etc/letsencrypt/wt6.ephec-ti.be/
COPY privkey.pem /etc/letsencrypt/wt6.ephec-ti.be/
COPY chain.pem /etc/letsencrypt/wt6.ephec-ti.be/
COPY options-ssl-apache.conf /etc/letsencrypt/

# Exposer les ports
EXPOSE 80 443

# Démarre Apache en avant-plan
CMD /usr/sbin/apache2ctl -D FOREGROUND


