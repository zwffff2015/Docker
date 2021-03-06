﻿#!/bin/bash

curl -sSL http://acs-public-mirror.oss-cn-hangzhou.aliyuncs.com/docker-engine/internet | sh -
sudo apt-get install linux-image-extra-$(uname -r) linux-image-extra-virtual

sudo apt-get update
sudo apt-get install apt-transport-https ca-certificates

sudo apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D

echo "deb https://apt.dockerproject.org/repo ubuntu-xenial main" | sudo tee /etc/apt/sources.list.d/docker.list

sudo apt-get update

sudo apt-get install docker-engine

sudo systemctl enable docker
sudo systemctl start docker