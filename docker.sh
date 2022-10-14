#!/bin/sh

docker_() {
  sudo apt-get install docker.io
}

#docker_
#docker -help

#https://docs.docker.com/engine/install/linux-postinstall/ Post-installation steps for Linux
postinstall(){
  sudo groupadd docker
  sudo usermod -aG docker $USER
  newgrp docker # make change efficient
  docker run hello-world # test
}

#postinstall

docker_compose(){
  sudo apt  install docker-compose


}
