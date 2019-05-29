FROM centos:7.4.1708
MAINTAINER zwffff "zwffff@gmail.com"

#配置consul版本
ENV CONSUL_VERSION=1.0.6
ENV HASHICORP_RELEASES=https://releases.hashicorp.com

#创建用户
RUN groupadd consul && useradd -g consul consul

RUN yum upgrade -y
RUN yum install -y net-tools
#RUN yum install -y firewall firewalld-config
RUN yum install -y wget unzip
RUN  wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_amd64.zip && \
        unzip consul_${CONSUL_VERSION}_linux_amd64.zip && \
        rm -rf consul_${CONSUL_VERSION}_linux_amd64.zip && \
        mv consul /usr/local/bin

#创建consul数据目录和配置目录
RUN mkdir -p /consul/data && \
        mkdir -p /consul/config && \
        chown -R consul:consul /consul

#设置匿名卷
VOLUME /consul/data

#开放端口
EXPOSE 8300
EXPOSE 8301 8301/udp 8302 8302/udp
EXPOSE 8500 8600 8600/udp
EXPOSE 80

