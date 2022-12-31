FROM debian:buster

RUN apt-get update -q \
&& apt-get upgrade -yq \
&& apt-get install nginx -yq

COPY conf/* /etc/nginx/

EXPOSE 443

CMD ["nginx", "-g", "daemon off;"]
