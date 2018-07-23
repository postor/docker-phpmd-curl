FROM ubuntu:16.04

WORKDIR /

RUN apt update -y \
&& apt install php wget curl php-xml -y \
&& wget http://static.phpmd.org/php/2.6.0/phpmd.phar \
&& mv phpmd.phar /usr/bin/phpmd \
&& chmod +x /usr/bin/phpmd

