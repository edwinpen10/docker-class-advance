FROM php:7.2-apache
FROM mysql:5.7
FROM phpmyadmin

RUN docker-php-ext-install pdo pdo_mysql 

RUN chown -R www-data:www-data /var/www
