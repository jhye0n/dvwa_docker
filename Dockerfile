FROM ubuntu:20.04

MAINTAINER jhyeon<stjhyeon@kakao.com>

ENV DEBIAN_FRONTEND=noninteractive

RUN apt clean
RUN apt update -y
RUN apt install apache2 -y
RUN apt install php php-mysqli php-gd -y
RUN apt install libapache2-mod-php -y
RUN apt install mysql-server -y

RUN rm -f /var/www/html/index.html
COPY ./source /var/www/html
RUN chown -R $USER:www-data /var/www/html

ENV APACHE_RUN_USER www-data
ENV APACHE_RUN_GROUP www-data

EXPOSE 4731

CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]