FROM nginx

MAINTAINER zwffff "zwffff@gmail.com"

ENV REFRESHER_AT 2019-05-25

RUN apt-get update
RUN apt-get install -y wget git
ADD uat/cashadmin.conf /etc/nginx/conf.d/

EXPOSE 80

ENTRYPOINT [ "nginx", "-g", "daemon off;"]
