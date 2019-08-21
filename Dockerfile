FROM php:7.2-apache
COPY . /var/www/html/
COPY ./cybersecurity.conf /etc/apache2/conf-available/
RUN apt -y install libapache2-mod-security2 && a2enmod headers
RUN ln -s /etc/apache2/conf-available/cybersecurity.conf n -s /etc/apache2/conf-enabled/cybersecurity.conf 
