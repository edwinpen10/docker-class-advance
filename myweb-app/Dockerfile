FROM php:7.2-apache

RUN apt-get update && apt-get install -y

RUN docker-php-ext-install mysqli pdo_mysql

COPY file-web/* /var/www/

RUN cp -r file-web/* /var/www/html/.

#CMD ["/usr/sbin/apache2", "-D", "FOREGROUND"]