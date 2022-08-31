#!/bin/sh
stern_bin() {
  set -x
  export STERN_RELEASE=$(curl -s https://api.github.com/repos/wercker/stern/releases/latest | grep tag_name | cut -d '"' -f 4)
  echo $STERN_RELEASE
  sudo curl -L https://github.com/wercker/stern/releases/download/$STERN_RELEASE/stern_linux_amd64 -o /usr/local/bin/stern
  sudo chmod +x /usr/local/bin/stern
  stern -version
}
stern_bin