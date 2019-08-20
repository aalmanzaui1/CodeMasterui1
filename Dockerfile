FROM php:7.2-apache
COPY . /var/www/html/
RUN sudo apt -y install libapache2-modsecurity && a2enmod headers
