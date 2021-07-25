FROM php:7.2-apache
RUN apt-get update -y; \
    apt-get upgrade -y;

COPY apache.conf /usr/local/apache2/conf/apache.conf

ENV APACHE_RUN_DIR /var/lib/apache/runtime
RUN mkdir -p ${APACHE_RUN_DIR}

CMD ["/usr/sbin/apache2", "-D", "FOREGROUND"]


