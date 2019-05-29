FROM nginx:1.12.1
MAINTAINER zwffff "zwffff@gmail.com"

ENV REFRESHED_AT 2019-05-26

RUN apt-get update -yqq && apt-get install -yqq net-tools supervisor wget unzip

RUN wget https://releases.hashicorp.com/consul-template/0.19.3/consul-template_0.19.3_linux_amd64.zip
RUN unzip consul-template_0.19.3_linux_amd64.zip
RUN mv consul-template /usr/bin/

RUN mkdir -p /etc/nginx/consul/
ADD nginx.ctmpl /etc/nginx/consul/
ADD nginx.conf /etc/nginx/

ADD supervisord.conf /etc/supervisor/supervisord.conf

ENTRYPOINT [ "/usr/bin/supervisord", "-c", "/etc/supervisor/supervisord.conf" ]
