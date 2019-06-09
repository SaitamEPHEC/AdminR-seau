FROM ubuntu:latest

RUN apt update && apt upgrade -y && apt install -y mysql-server nano

RUN ["/bin/bash", "-c", "debconf-set-selections <<< 'mysql-server mysql-server/root_password password root'"]
RUN ["/bin/bash", "-c", "debconf-set-selections <<< 'mysql-server mysql-server/root_password_again password root'"]

RUN mkdir /var/run/mysqld && chown -R mysql:mysql /var/run/mysqld

COPY start.sql /tmp
COPY sqlshell /tmp

RUN chmod u+x /tmp/sqlshell
RUN /tmp/sqlshell

COPY mysqld.cnf /etc/mysql/mysql.conf.d/

EXPOSE 3306

CMD mysqld_safe
