FROM php:7.2-apache
RUN apt-get update -y; \
    apt-get upgrade -y;

WORKDIR /var/www/html/

COPY apache.conf /usr/local/apache2/conf/apache.conf

CMD ["/usr/sbin/apache2", "-D", "FOREGROUND"]


