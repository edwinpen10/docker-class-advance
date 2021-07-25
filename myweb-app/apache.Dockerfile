#FROM php:7.2-apache
FROM ubuntu:18.04

RUN apt-get -qq update
RUN apt-get -qq install apache2

#RUN apt-get update -y; \
#    apt-get upgrade -y;

COPY apache.conf /usr/local/apache2/conf/apache.conf
ENV APACHE_RUN_USER www-data
ENV APACHE_RUN_GROUP www-data
ENV APACHE_LOG_DIR /var/log/apache2
ENV APACHE_PID_FILE /var/run/apache2.pid
ENV APACHE_RUN_DIR /var/run/apache2
ENV APACHE_LOCK_DIR /var/lock/apache2

RUN mkdir -p $APACHE_RUN_DIR $APACHE_LOCK_DIR $APACHE_LOG_DIR

EXPOSE 80

ENTRYPOINT [ "/usr/sbin/apache2" ]
CMD ["-D", "FOREGROUND"]


