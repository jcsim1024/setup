#!/bin/sh

#https://redhat-developer-demos.github.io/kafka-tutorial/kafka-tutorial/1.0.x/01-setup.html
minikube_() {
  set -x
  sudo apt-get install -y apt-transport-https
  sudo apt-get install -y virtualbox virtualbox-ext-pack
  curl -Lo minikube https://storage.googleapis.com/minikube/releases/v0.28.2/minikube-linux-amd64
  chmod +x minikube && sudo mv minikube /usr/local/bin/
  minikube version
}
minikube_

jcsim@jcsim-Latitude-5421:~/dev/ari-dit-yoda-station-webapp$ docker exec -it $(docker ps -q --filter "label=com.docker.compose.service=kafka") /bin/bash
[kafka@kafka kafka]$ ./bin/kafka-topics.sh --create --bootstrap-server localhost:29092 --replication-factor 1 --partitions 1 --topic songs
[kafka@kafka kafka]$ ./bin/kafka-topics.sh --list --bootstrap-server localhost:29092
songs
[kafka@kafka kafka]$ exit
exit
jcsim@jcsim-Latitude-5421:~/dev/ari-dit-yoda-station-webapp$ docker run -it --network=host edenhill/kcat:1.7.0 kcat -b localhost:29092 -L
Unable to find image 'edenhill/kcat:1.7.0' locally
1.7.0: Pulling from edenhill/kcat
396c31837116: Pull complete
34da134e75b7: Pull complete
7017f82473c2: Pull complete
Digest: sha256:c0591a6ae7dec01dd973cf820e13e4ee135c907f991a034e3723fc3ee7ddc6b2
Status: Downloaded newer image for edenhill/kcat:1.7.0
Metadata for all topics (from broker 0: localhost:29092/0):
 1 brokers:
  broker 0 at localhost:29092 (controller)
 1 topics:
  topic "songs" with 1 partitions:
    partition 0, leader 0, replicas: 0, isrs: 0
