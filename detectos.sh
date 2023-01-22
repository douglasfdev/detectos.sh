#!/bin/bash

case "$OSTYPE" in
  darwin*)
          if [[ $(which docker) && $(docker --version) ]]
          then
            wait open -a Docker.app 
            docker ps;
          else /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)" &&\
            brew install docker &&\
            brew install docker-compose &&\
            wait open -a Docker.app &&\
            docker ps;
          fi ;;
  linux*)
          if [[ $(which docker) && $(docker --version) ]]
          then
            wait open -a Docker.app &&\
            docker ps;
          elif [[ ! $(which docker) && ! $(docker --version) ]]
          then
            sudo apt install docker -y &&\
            sudo apt install curl  &&\
            sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose &&\
            sudo chmod +x /usr/local/bin/docker-compose &&\
            wait open -a Docker.app &&\
            docker ps;
          elif [[ ! $(which docker-compose) && ! $(docker-compose -v) ]]
          then
          echo "Seu sistema não suporta o Docker"
          fi ;;
  windowsnt*) 
          if [[ $(wsl --set-default-version > 1) && ! $(which docker) && !$(docker --version) ]]
          then
            wsl.exe && \
            wsl sudo apt install docker -y &&\
            wsl sudo apt install curl  &&\
            wsl sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose &&\
            wsl sudo chmod +x /usr/local/bin/docker-compose &&\
            wsl docker ps;
          elif [[ ! $(wsl --version) ]]
          then
            wsl --install && \
            wsl.exe --set-default-version 2 &&\
            wsl --set-default ubuntu &&\
            wsl.exe &&\
            wsl sudo apt install docker -y &&\
            wsl sudo apt install curl  &&\
            wsl sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose &&\
            wsl sudo chmod +x /usr/local/bin/docker-compose &&\
            wsl docker ps;
          else
            echo "Seu sistema não tem suporte ao Docker"
          fi ;; 
  msys*)
          if [[ $(wsl --set-default-version > 1) && ! $(which docker) && !$(docker --version) ]]
          then
            wsl.exe && \
            wsl sudo apt install docker -y &&\
            wsl sudo apt install curl  &&\
            wsl sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose &&\
            wsl sudo chmod +x /usr/local/bin/docker-compose &&\
            wsl docker ps;
          elif [[ ! $(wsl --version) ]]
          then
            wsl --install && \
            wsl.exe --set-default-version 2 &&\
            wsl --set-default ubuntu &&\
            wsl.exe &&\
            wsl sudo apt install docker -y &&\
            wsl sudo apt install curl  &&\
            wsl sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose &&\
            wsl sudo chmod +x /usr/local/bin/docker-compose &&\
            wsl docker ps;
          else
            echo "Seu sistema não tem suporte ao Docker"
          fi ;; 
  cygwin*)
          if [[ $(wsl --set-default-version > 1) && ! $(which docker) && !$(docker --version) ]]
          then
            wsl.exe &&\
            wsl sudo apt install docker -y &&\
            wsl sudo apt install curl  &&\
            wsl sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose &&\
            wsl sudo chmod +x /usr/local/bin/docker-compose &&\
            wsl docker ps;
          elif [[ ! $(wsl --version) ]]
          then
            wsl --install && \
            wsl.exe --set-default-version 2 &&\
            wsl --set-default ubuntu &&\
            wsl.exe &&\
            wsl sudo apt install docker -y &&\
            wsl sudo apt install curl  &&\
            wsl sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose &&\
            wsl sudo chmod +x /usr/local/bin/docker-compose &&\
            wsl docker ps;
          else
            echo "Seu sistema não tem suporte ao Docker"
          fi ;; 
esac
