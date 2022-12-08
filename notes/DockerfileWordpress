FROM debian:buster

# Installation of wordpress and php-fpm
RUN apt-get update \
	&& apt-get upgrade \
	&& apt-get install wordpress -y \
	&& apt-get install wget \
	&& apt-get install php-cli php-mysql -y \
	&& apt-get install php-curl php-gd php-intl  -y \
	&& apt-get install php-fpm -y

# Configure
## Remove the default index.html before installing wordpress
## Download wordpress in a file tar -> Decompress -> Remove .tar
## Move all wordpress files in our folder in our container.
## Assign rights:
## www-data = user par defaut des serveurs web en general (nginx...)
## Donne tous les droits a www-data appartenant au groupe www:data de maniere recursive
## sur le contenu du dossier html.

RUN	rm /var/www/html/index.html \
	&& wget https://wordpress.org/latest.tar.gz \
	&& tar -xvf latest.tar.gz \
	&& rm latest.tar.gz \
	&& mv /wordpress/* /var/www/html/ \
	&& chown -R www-data:www-data /var/www/html/ \
	&& mkdir -p /run/php


EXPOSE 9000

# Launch
CMD service apache2 start && php-fpm7.3 --nodaemonize


# A la fin optimisation -> mettre toutes les commandes run en une
