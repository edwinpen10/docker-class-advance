FROM httpd:2.4

RUN apt-get update; \
    apt-get upgrade; \
    apt-get install apache2;

COPY apache.conf /usr/local/apache2/conf/apache.conf
RUN echo "Include /usr/local/apache2/conf/apache.conf" \
    >> /usr/local/apache2/conf/httpd.conf

EXPOSE 80

CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
