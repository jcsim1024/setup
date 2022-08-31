#!/bin/sh
maven_() {
  set -x
  sudo apt install maven
  mvn -version
}
maven_