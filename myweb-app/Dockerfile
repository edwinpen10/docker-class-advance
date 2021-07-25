FROM php:7.4-fpm-alpine
RUN apk --update
RUN docker-php-ext-install pdo pdo_mysql 
FROM mysql:5.7
FROM phpmyadmin
FROM httpd:2.4
RUN chown -R www-data:www-data /var/www
