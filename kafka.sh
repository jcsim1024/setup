#!/bin/sh

#https://redhat-developer-demos.github.io/kafka-tutorial/kafka-tutorial/1.0.x/01-setup.html


#jcsim@jcsim-Latitude-5421:~/dev/ari-dit-yoda-station-webapp$ docker exec -it $(docker ps -q --filter "label=com.docker.compose.service=kafka") /bin/bash
#[kafka@kafka kafka]$ ./bin/kafka-topics.sh --create --bootstrap-server localhost:29092 --replication-factor 1 --partitions 1 --topic songs
#[kafka@kafka kafka]$ ./bin/kafka-topics.sh --list --bootstrap-server localhost:29092
#songs
#[kafka@kafka kafka]$ exit
#exit
#jcsim@jcsim-Latitude-5421:~/dev/ari-dit-yoda-station-webapp$ docker run -it --network=host edenhill/kcat:1.7.0 kcat -b localhost:29092 -L
#Metadata for all topics (from broker 0: localhost:29092/0):
# 1 brokers:
#  broker 0 at localhost:29092 (controller)
# 1 topics:
#  topic "songs" with 1 partitions:
#    partition 0, leader 0, replicas: 0, isrs: 0

#List topics
docker run -it --network=host edenhill/kcat:1.7.0 kcat -b localhost:29092 -t songs -C -K:
1: {"id": 1, "name": "The Ecstasy of Gold", "author":"Ennio Morricone", "op":"ADD"}
2: {"id": 2, "name": "Still Loving you", "author":"Scorpions", "op":"ADD"}

sudo snap install http