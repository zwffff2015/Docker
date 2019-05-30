FROM ubuntu:14.04

MAINTAINER zwffff "zwffff@gmail.com"
ENV REFRESHED_AT 2019-05-23

RUN apt-get update -yqq && apt-get -yqq install ruby=2.2.2 ruby-dev build-essential redis-tools
RUN gem install --no-rdoc --no-ri sinatra json redis
RUN mkdir -p /opt/webapp

EXPOSE 4567

CMD ["/opt/webapp/bin/webapp"]

