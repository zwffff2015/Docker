FROM ubuntu:14.04

MAINTAINER zwffff "zwffff@gmail.com"

ENV REFRESHED_AT 2019-05-25

RUN apt-get -yqq update
RUN apt-get -yqq install wget

VOLUME [ "/var/lib/tomcat7/webapps" ]
WORKDIR /var/lib/tomcat7/webapps/

ENTRYPOINT [ "wget" ]
CMD [ "-?" ]

