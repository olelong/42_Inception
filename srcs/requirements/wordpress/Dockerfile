FROM debian:buster

# Installation of wordpress and php-fpm
RUN apt-get update -q \
	&& apt-get upgrade -q \
	&& apt-get install wordpress -yq \
	&& apt-get install wget -q \
	&& apt-get install php-cli php-mysql -yq \
	&& apt-get install php-curl php-gd php-intl  -yq \
	&& apt-get install php-fpm -yq


# Configure
## Remove the default index.html before installing wordpress
## Download wordpress in a file tar -> Decompress -> Remove .tar
## Move all wordpress files in our folder in our container.
## Assign rights:
## www-data = user par defaut des serveurs web en general (nginx...)
## Donne tous les droits a www-data appartenant au groupe www:data de maniere recursive
## sur le contenu du dossier html.

COPY conf/wp-config.php /var/www/html/

RUN	rm /var/www/html/index.html \
	&& wget https://wordpress.org/latest.tar.gz \
	&& tar -xvf latest.tar.gz \
	&& rm latest.tar.gz \
	&& mv /wordpress/* /var/www/html/ \
	&& chown -R www-data:www-data /var/www/html/ \
	&& mkdir -p /run/php


COPY conf/www.conf /etc/php/7.3/fpm/pool.d/

EXPOSE 9000

# Launch
CMD php-fpm7.3 --nodaemonize


