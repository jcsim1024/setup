#!/bin/sh
strimzi() {
  set -x
  sudo apt-get install -y apt-transport-https
  sudo apt-get install -y virtualbox virtualbox-ext-pack
  curl -Lo minikube https://storage.googleapis.com/minikube/releases/v0.28.2/minikube-linux-amd64
  chmod +x minikube && sudo mv minikube /usr/local/bin/
}
if [ '' == $1 ]; then
    strimzi
fi
if [ 'env' == $1 ]; then
    export MINIKUBE_HOME=$TUTORIAL_HOME;
    export PATH=$MINIKUBE_HOME/bin:$PATH
    export KUBECONFIG=$MINIKUBE_HOME/.kube/config
    export KUBE_EDITOR="code -w"
fi