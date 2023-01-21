#!/bin/bash

case "$OSTYPE" in
  darwin*)
          if [[ $(which docker) && $(docker --version) ]]
          then
            docker ps;
          else /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)" &&\
            brew install docker &&\
            brew install docker-compose &&\
            docker ps;
          fi ;;
  linux*)
          if [[ $(which docker) && $(docker --version) ]]
          then
            docker ps;
          elif [[ ! $(which docker) && !$(docker --version) ]]
          then
            sudo apt install docker -y &&\
            sudo service docker start &&\
            docker ps;
          elif [[ ! $(which docker-compose) && ! $(docker-compose -v) ]]
          then
          echo "Seu sistema não suporta o Docker"
          fi ;;
  windowsnt*) 
          if [[ $(wsl --set-default-version > 1) ]]
          then
            wsl.exe && \
            wsl sudo apt install docker-engine -y &&\
            wsl docker- ps;
          elif [[ ! $(wsl --version) ]]
          then
            wsl --install && \
            wsl.exe --set-default-version 2 &&\
            wsl --set-default ubuntu &&\
            wsl.exe &&\
            wsl instalar docker &&\
            wsl docker ps;
          else
            echo "Seu sistema não tem suporte ao Docker"
          fi ;; 
  msys*)
          if [[ $(wsl --set-default-version > 1) ]]
          then
            wsl.exe && \
            wsl sudo apt install docker-engine -y &&\
            wsl docker ps;
          elif [[ ! $(wsl --version) ]]
          then
            wsl --install && \
            wsl.exe --set-default-version 2 &&\
            wsl --set-default ubuntu &&\
            wsl.exe &&\
            wsl instalar docker &&\
            wsl docker ps;
          else
            echo "Seu sistema não tem suporte ao Docker"
          fi ;; 
  cygwin*)
          if [[ $(wsl --set-default-version > 1) ]]
          then
            wsl.exe && \
            wsl sudo apt install docker-engine -y &&\
            wsl docker ps;
          elif [[ ! $(wsl --version) ]]
          then
            wsl --install && \
            wsl.exe --set-default-version 2 &&\
            wsl --set-default ubuntu &&\
            wsl.exe &&\
            wsl instalar docker &&\
            wsl docker ps;
          else
            echo "Seu sistema não tem suporte ao Docker"
          fi ;; 
esac
