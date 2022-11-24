FROM debian:buster

# Installation
RUN apt-get update \
	&& apt-get upgrade \
	&& apt-get install mariadb-server -y \
	&& apt-get install vim -y \
	&& mysql-secure_installation

# Configure
RUN mkdir -p /var/run/mysqld \
	&& echo "socket = /var/run/mysqld/mysqld.sock" >> /etc/mysql/my.cnf \
	&& chown mysql /var/run/mysqld/

ADD database.sh /var/run/mysqld/database.sh 
#COPY database.sh /var/run/mysqld/

#RUN cd /var/run/mysqld/ && ./database.sh
#CMD service mysql start
