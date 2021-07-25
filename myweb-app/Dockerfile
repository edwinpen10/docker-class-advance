FROM php:7.4-fpm-alpine
RUN docker-php-ext-install pdo pdo_mysql 
FROM mysql:5.7
FROM phpmyadmin
RUN chown -R www-data:www-data /var/www/
