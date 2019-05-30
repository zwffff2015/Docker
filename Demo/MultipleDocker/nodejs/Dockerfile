FROM node:latest

MAINTAINER zwffff "zwffff@gmail.com"

ENV REFRESHED_AT 2019-05-25

RUN apt-get -yqq update
RUN mkdir -p /var/log/nodeapp

ADD nodeapp /opt/nodeapp/

WORKDIR /opt/nodeapp/

RUN node -v
RUN npm cache clean --force
RUN npm config set strict-ssl false
RUN npm install

VOLUME [ "/var/log/nodeapp" ]
EXPOSE 3000

ENTRYPOINT [ "nodejs", "server.js" ]
