FROM debian:buster

# Installation
	# Install mariadb
	# Install expect for mysql_secure_installation
	# Install procps for pkill
RUN apt-get update -q \
	&& apt-get upgrade -q \
	&& apt-get install mariadb-server -yq \
	&& apt-get install vim -yq \
	&& apt-get install expect -yq \
	&& apt-get install procps -yq


# Configure
	# Add in the container an expect script with responses
	# for mysql_secure_installation
COPY script.exp .

	# Add the socket in the file my.cnf
	# Administrate rights for the folder mysqld
	# Launch the script for mysql_secure_installation
RUN mkdir -p /var/run/mysqld \
	&& echo "socket = /var/run/mysqld/mysqld.sock" >> /etc/mysql/my.cnf \
	&& chown mysql /var/run/mysqld/ \
	&& service mysql start \
	&& ./script.exp

	# Add in the container the script for create the databse
COPY database.sh /

	# Launch the script to create the database and
	# launch mysql
CMD bash /database.sh

