FROM php:7.2-aphace
RUN docker-php-ext-install pdo pdo_mysql 
FROM mysql:5.7
FROM phpmyadmin
FROM httpd
CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
