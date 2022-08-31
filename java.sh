#!/bin/sh
java_() {
  set -x
  sudo apt install openjdk-11-jre-headless  # version 11.0.16+8-0ubuntu1~20.04
  sudo apt install openjdk-17-jre-headless  # version 17.0.4+8-1~20.04
  java -version
}
java_