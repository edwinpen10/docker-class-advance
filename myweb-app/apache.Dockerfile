FROM php:7.2-apache
RUN apt-get update -y; \
    apt-get upgrade -y;

COPY apache.conf /usr/local/apache2/conf/apache.conf
RUN echo "Include /usr/local/apache2/conf/apache.conf" \
    >> /usr/local/apache2/conf/httpd.conf

CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
