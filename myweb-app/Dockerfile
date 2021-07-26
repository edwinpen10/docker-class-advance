FROM php:7.2-apache

RUN apt-get update && apt-get install -y

RUN docker-php-ext-install mysqli pdo_mysql

RUN mkdir /app

COPY file-web/* /app/

RUN cp -r /app/* /var/www/html/.

ENV APACHE_RUN_DIR /var/lib/apache/runtime
RUN mkdir -p ${APACHE_RUN_DIR}

CMD ["/usr/sbin/apache2", "-D", "FOREGROUND"]