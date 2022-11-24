FROM debian:buster

# Installation
RUN apt-get update \
	&& apt-get upgrade \
	&& apt-get install mariadb-server -y \
	&& apt-get install vim -y

# Configure
RUN mkdir -p /var/run/mysqld \
	&& echo "socket = /var/run/mysqld/mysqld.sock" >> /etc/mysql/my.cnf \
	&& chown mysql /var/run/mysqld/
	
#CMD service mysql start
