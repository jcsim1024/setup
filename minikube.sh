#!/bin/sh
minikube() {
  set -x
  sudo apt-get install -y apt-transport-https
  sudo apt-get install -y virtualbox virtualbox-ext-pack
  curl -Lo minikube https://storage.googleapis.com/minikube/releases/v0.28.2/minikube-linux-amd64
  chmod +x minikube && sudo mv minikube /usr/local/bin/
}
minikube