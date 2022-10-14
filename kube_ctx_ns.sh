#!/bin/sh

kube_ctx_ns() {
  #https://asciinema.org/a/262970
  set -x
  sudo git clone https://github.com/ahmetb/kubectx /opt/kubectx
  sudo ln -s /opt/kubectx/kubectx /usr/local/bin/kubectx
  sudo ln -s /opt/kubectx/kubectx /usr/local/bin/kx

  sudo ln -s /opt/kubectx/kubens /usr/local/bin/kubens
  sudo ln -s /opt/kubectx/kubens /usr/local/bin/ks
  kx --help
  ks --help
}
kube_ctx_ns