FROM debian:buster

RUN apt-get update \
	&& apt-get upgrade \
	&& apt-get install wordpress -y

RUN apt-get install php-cli php-mysql -y \
	&& apt-get install php-curl php-gd php-intl  -y \
	&& apt-get install php-fpm -y




EXPOSE 9000

#CMD run 
