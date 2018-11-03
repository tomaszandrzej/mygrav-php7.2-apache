# php/apache docker for grav-admin

FROM php:7.2-apache

RUN a2enmod proxy proxy_fcgi rewrite

RUN apt-get update && apt-get upgrade -y

RUN apt-get install -y apt-utils

RUN apt-get install -y libzip-dev libpng-dev zip

RUN docker-php-ext-configure zip --with-libzip

RUN docker-php-ext-install zip gd
