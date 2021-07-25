FROM httpd:2.4.48-alpine
RUN apk update; \
    apk upgrade;

COPY apache.conf /usr/local/apache2/conf/apache.conf
RUN echo "Include /usr/local/apache2/conf/apache.conf" \
    >> /usr/local/apache2/conf/httpd.conf

EXPOSE 80
    
CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]