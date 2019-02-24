#!/usr/bin/env bash
set -euo pipefail
IFS=$'\n\t'

# install Docker CE

sudo apt-get update -y
sudo apt-get upgrade -y

sudo apt-get install \
	apt-transport-https \
	ca-certificates \
	curl \
	gnupg-agent \
	software-properties-common

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

sudo add-apt-repository \
	"deb [arch=amd64] https://download.docker.com/linux/ubuntu \
	$(lsb_release -cs) \
	stable"


sudo apt-get update -y


# install the latest version of docker

sudo apt-get install docker-ce docker-ce-cli containerd.io


# verify install with running hello world
# sudo docker run hello-world
