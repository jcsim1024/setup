#!/bin/sh

set -x

 snap_() {
  sudo snap install $1
  $1 --help
}

apt_() {
  sudo apt-get install $1
  $1 --help
}

#snap_ curl
#snap_ traceroute
#apt_ watch
#apt_ postgresql-client
apt_

sudo apt-ge install jq #https://stedolan.github.io/jq/download/


# vpn https://ask.fedoraproject.org/t/best-way-to-fix-vpns-that-dont-work-with-systemd-resolved/21321
#https://askubuntu.com/questions/584054/how-do-i-configure-the-search-domain-correctly
#https://bobcares.com/blog/cannot-resolve-host-address-openvpn/

sudo apt purge kazam
sudo apt install kazam
sudo apt install bat