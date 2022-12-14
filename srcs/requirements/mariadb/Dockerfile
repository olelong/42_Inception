FROM debian:buster

# Installation
RUN apt-get update -q \
	&& apt-get upgrade -q \
	&& apt-get install mariadb-server -yq \
	&& apt-get install vim -yq \
	&& apt-get install expect -yq \
	&& apt-get install procps -yq


# Configure
COPY script.exp .

RUN mkdir -p /var/run/mysqld \
	&& echo "socket = /var/run/mysqld/mysqld.sock" >> /etc/mysql/my.cnf \
	&& chown mysql /var/run/mysqld/ \
	&& service mysql start \
	&& ./script.exp

COPY database.sh /

CMD bash /database.sh

