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
          elif echo "Seu sistema não suporta o Docker"
          else sudo apt-get install docker-engine -y &&\
            sudo service docker start &&\
            docker-compose up -d
          fi ;;
  windowsnt*) 
          if [[ $(wsl --set-default-version > 1) ]]
          wsl.exe && \
          instalar docker &&\
          rodar docker-compose up -d
          elif [[ ! $(wsl --version) ]]
          wsl --install && \
          wsl.exe
          instalar docker \
          rodar docker-compose
          fi ;; 
  msys*) if [[ $(wsl --set-default-version > 1) ]]
          wsl.exe && \
          instalar docker &&\
          rodar docker-compose up -d
          elif [[ ! $(wsl --version) ]]
          wsl --install && \
          wsl.exe
          instalar docker \
          rodar docker-compose
          fi ;; 
  cygwin*)  if [[ $(wsl --set-default-version > 1) ]]
          wsl.exe && \
          instalar docker &&\
          rodar docker-compose up -d
          elif [[ ! $(wsl --version) ]]
          wsl --install && \
          wsl.exe
          instalar docker \
          rodar docker-compose
          fi ;;
esac
