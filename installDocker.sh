#!/bin/bash
# ubuntu 18 install docker
sudo apt remove -y docker docker-engine docker.io

sudo apt install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common

sudo snap install docker
sudo docker version
