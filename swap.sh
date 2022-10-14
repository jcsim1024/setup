#!/bin/sh

#https://www.digitalocean.com/community/tutorials/how-to-add-swap-space-on-ubuntu-20-04
# increase https://askubuntu.com/questions/1264568/increase-swap-in-20-04
set -x
sudo swapoff /swapfile
sudo rm  /swapfile
#Create new swap space of size 16 GB (16 * 1024 = 16384). bs is the block size. Basically bs * count = bytes to be allocated (in this case 16 GB).
# Here bs = 1M (M stands for mega, so we are assigning 1MB block size) and we are allocating 16384 * 1MB (=16GB) to swap.
 sudo dd if=/dev/zero of=/swapfile bs=1M count=20K
#Give it the read/write permission for root
 sudo chmod 600 /swapfile
#Format it to swap
 sudo mkswap /swapfile
#Turn on swap again
 sudo swapon /swapfile


#free -h #used ?
#df -h #disk file usage human readable



