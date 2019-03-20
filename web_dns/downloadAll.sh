#! /bin/sh

curl -o docker-compose.yml https://raw.githubusercontent.com/SaitamEPHEC/AdminR-seau/master/web_dns/docker-compose.yml
mkdir config
curl -o config/named.conf  https://raw.githubusercontent.com/SaitamEPHEC/AdminR-seau/master/web_dns/named.conf
curl -o config/named.conf.local https://raw.githubusercontent.com/SaitamEPHEC/AdminR-seau/master/web_dns/named.conf.local
curl -o config/named.conf.default-zones https://raw.githubusercontent.com/SaitamEPHEC/AdminR-seau/master/web_dns/named.conf.default-zones
curl -o config/named.conf.options https://raw.githubusercontent.com/SaitamEPHEC/AdminR-seau/master/web_dns/named.conf.options
curl -o config/db.wt6.ephec-ti.be https://raw.githubusercontent.com/SaitamEPHEC/AdminR-seau/master/web_dns/db.wt6.ephec-ti.be
curl -o config/db.126.147.77.51 https://raw.githubusercontent.com/SaitamEPHEC/AdminR-seau/master/web_dns/db.126.147.77.51
