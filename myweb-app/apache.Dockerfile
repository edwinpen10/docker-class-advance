FROM httpd:2.4

RUN apt-get update -y; \
    apt-get upgrade -y; \
    apt-get install apache2 -y; \
    service apache2 start;

COPY apache.conf /usr/local/apache2/conf/apache.conf
RUN echo "Include /usr/local/apache2/conf/apache.conf" \
    >> /usr/local/apache2/conf/httpd.conf

EXPOSE 80

