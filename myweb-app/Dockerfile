FROM php:7.2-apache

RUN apt-get update && apt-get install -y

RUN docker-php-ext-install mysqli pdo_mysql

RUN mkdir /app

COPY file-web/* /app/

RUN cp -r /app/* /var/www/html/.


CMD ["a2dismod","php7.2"]
CMD ["a2enmod", "php7.2"]
#CMD ["systemctl","restart", "apache2"]

CMD ["/etc/init.d/apache2", "restart"]

#CMD ["/usr/sbin/apache2", "-D", "FOREGROUND"]