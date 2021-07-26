FROM php:7.2-apache

RUN apt-get update && apt-get install -y

RUN docker-php-ext-install mysqli pdo_mysql

COPY myweb-app/file-web/* /var/www/

CMD ["/usr/sbin/apache2", "-D", "FOREGROUND"]