FROM php:7.2-apache
COPY . /var/www/html/live2d/

RUN ln -s /etc/apache2/mods-available/headers.load /etc/apache2/mods-enabled/headers.load
#RUN sed -ri -e 's!#Header set X-Frame-Options: "sameorigin"!#Header set X-Frame-Options: "sameorigin"\nHeader add X-Frame-Options: "sameorigin"\nHeader add Access-Control-Allow-Origin "origin"!g' /etc/apache2/conf-available/security.conf
#RUN cat /etc/apache2/conf-available/security.conf

#RUN sed -ri -e 's!<Directory />!<Directory />\n    Header set Access-Control-Allow-Origin *!g' /etc/apache2/apache2.conf
#RUN cat /etc/apache2/apache2.conf

RUN echo "Header set Access-Control-Allow-Origin *" >> /etc/apache2/sites-available/000-default.conf
RUN cat /etc/apache2/sites-available/000-default.conf
