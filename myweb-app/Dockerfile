FROM php:7.2-apache

RUN apt-get update && apt-get install -y

RUN docker-php-ext-install mysqli pdo_mysql

RUN mkdir /app

COPY file-web/* /app/

RUN cp -r /app/* /var/www/html/.




CMD ["a2dismod","php7.2"]
CMD ["a2enmod", "php7.2"]
#CMD ["systemctl","restart", "apache2"]

EXPOSE 80
RUN echo "ServerName localhost" >> /etc/apache2/apache2.conf
CMD ["/etc/init.d/apache2", "start"]

#CMD ["/usr/sbin/apache2", "-D", "FOREGROUND"]