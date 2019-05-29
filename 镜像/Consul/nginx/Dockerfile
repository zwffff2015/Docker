FROM nginx:1.12.1
MAINTAINER zwffff "zwffff@gmail.com"

ENV REFRESHED_AT 2019-05-26
ADD nginx.conf /etc/nginx
#ADD test.conf /etc/nginx/consul/

RUN apt-get update -yqq && apt-get install -yqq net-tools
#RUN echo 'Hi, I am in your container' \
#        > /usr/share/nginx/html/index.html
#EXPOSE 8000
#VOLUME [ "/etc/nginx/" ]
