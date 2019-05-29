FROM ubuntu:14.04
MAINTAINER zwffff "zwffff@gmail.com"

ENV REFRESHED_AT 2019-05-27

RUN apt-get update && apt-get install -yqq wget unzip
RUN wget https://releases.hashicorp.com/consul-template/0.19.3/consul-template_0.19.3_linux_amd64.zip
RUN unzip consul-template_0.19.3_linux_amd64.zip
RUN mv consul-template /usr/bin/

RUN mkdir -p /etc/nginx/consul/
ADD nginx.ctmpl /etc/nginx/consul/
#ADD nginx.conf /etc/nginx/

#ENTRYPOINT [ "consul-template", "-consul-addr", "172.11.0.3:8500", "-template", "/etc/nginx/consul/nginx.ctmpl:/etc/nginx/consul/vhost.conf", "-log-level", "info" ]
