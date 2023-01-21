!#/bin/bash

case "$OSTYPE" in
  darwin*)
          if [[ $(which docker) && $(docker --version) ]]
          then
            docker-compose up -d;
          else /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)" &&\
            brew install docker &&\
            brew install docker-compose &&\
            docker ps
          fi ;;
  linux*)
          if [[ $(which docker) && $(docker --version) ]]
          then
            docker-compose up -d;
          elif [[ ! $(which docker) && !$(docker --version) ]]
            sudo apt install docker-engine -y &&\
            sudo service docker start &&\
            docker-compose up -d
          elif [[ ! $(which docker-compose) && ! $(docker-compose -v) ]]
          echo "Seu sistema não suporta o Docker"
          fi ;;
  windowsnt*) 
          if [[ $(wsl --set-default-version > 1) ]]
            wsl.exe && \
            wsl sudo apt install docker-engine -y &&\
            wsl docker-compose up -d
          elif [[ ! $(wsl --version) ]]
            wsl --install && \
            wsl.exe --set-default-version 2 &&\
            wsl --set-default ubuntu &&\
            wsl.exe &&\
            wsl instalar docker &&\
            wsl docker-compose up -d
          else
            echo "Seu sistema não tem suporte ao Docker"
          fi ;; 
  msys*)
          if [[ $(wsl --set-default-version > 1) ]]
            wsl.exe && \
            wsl sudo apt install docker-engine -y &&\
            wsl docker-compose up -d
          elif [[ ! $(wsl --version) ]]
            wsl --install && \
            wsl.exe --set-default-version 2 &&\
            wsl --set-default ubuntu &&\
            wsl.exe &&\
            wsl instalar docker &&\
            wsl docker-compose up -d
          else
            echo "Seu sistema não tem suporte ao Docker"
          fi ;; 
  cygwin*)
          if [[ $(wsl --set-default-version > 1) ]]
            wsl.exe && \
            wsl sudo apt install docker-engine -y &&\
            wsl docker-compose up -d
          elif [[ ! $(wsl --version) ]]
            wsl --install && \
            wsl.exe --set-default-version 2 &&\
            wsl --set-default ubuntu &&\
            wsl.exe &&\
            wsl instalar docker &&\
            wsl docker-compose up -d
          else
            echo "Seu sistema não tem suporte ao Docker"
          fi ;; 
esac
