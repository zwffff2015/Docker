FROM ubuntu:14.04

MAINTAINER zwffff "zwffff@gmail.com"
ENV REFRESHED_AT 2019-05-24

RUN apt-get update
RUN apt-get install -y nginx wget git
ADD uat/cashadmin.conf /etc/nginx/conf.d/

#ENTRYPOINT [ "nginx", "-g", "daemon off;" ]
