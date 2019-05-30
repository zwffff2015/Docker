FROM ubuntu:14.04

MAINTAINER zwffff "zwffff@gmail.com"
ENV REFRESHED_AT 2019-05-23

RUN apt-get -yqq update && apt-get -yqq install nginx
RUN mkdir -p /var/www/html/website

ADD nginx/global.conf /etc/nginx/conf.d/
ADD nginx/nginx.conf /etc/nginx/nginx.conf
EXPOSE 80
