FROM php:7.4-apache

RUN apt update && apt install -y nano git && apt clean

COPY index.html /var/www/html/
COPY info.php /var/www/html/ 

WORKDIR /var/www/html

RUN chown -R www-data:www-data /var/www/html
