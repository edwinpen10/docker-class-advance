FROM php:7.4-fpm-alpine
FROM mysql:5.7
FROM phpmyadmin
FROM httpd:2.4

RUN docker-php-ext-install pdo pdo_mysql 

RUN chown -R www-data:www-data /var/www
