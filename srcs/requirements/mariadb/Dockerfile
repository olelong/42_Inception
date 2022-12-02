FROM debian:buster

# Installation
RUN apt-get update -qq \
	&& apt-get upgrade -qq \
	&& apt-get install mariadb-server -yqq \
	&& apt-get install vim -yqq

# Configure
RUN mkdir -p /var/run/mysqld \
	&& echo "socket = /var/run/mysqld/mysqld.sock" >> /etc/mysql/my.cnf \
	&& chown mysql /var/run/mysqld/

COPY database.sh /var/run/mysqld/

#RUN cd /var/run/mysqld/ && ./database.sh
#CMD service mysql start mysqld_safe
#CMD mysqld_safe 
