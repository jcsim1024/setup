Install tweak tools

#https://askubuntu.com/questions/1240123/how-to-enable-the-hibernate-option-in-ubuntu-20-04
# https://superuser.com/questions/39532/hibernating-and-booting-into-another-os-will-my-filesystems-be-corrupted
#https://askubuntu.com/questions/1062206/hibernatewarning-tuxonice-binary-signature-file-not-found
# https://superuser.com/questions/267303/no-option-to-hibernate-shutdown-in-gnome-3
jcsim@jcsim-Latitude-5421:~$ findmnt -no UUID -T /swapfile && sudo swap-offset /swapfile
54be0e8f-1f55-4ea4-ac9d-5321ca6dee38
resume offset = 58759168
jcsim@jcsim-Latitude-5421:~$ sudo nano /etc/default/grub
jcsim@jcsim-Latitude-5421:~$ sudo update-grub
Sourcing file `/etc/default/grub'
Sourcing file `/etc/default/grub.d/init-select.cfg'
Sourcing file `/etc/default/grub.d/oem-flavour.cfg'
Generating grub configuration file ...
Found linux image: /boot/vmlinuz-5.14.0-1052-oem
Found initrd image: /boot/initrd.img-5.14.0-1052-oem
Found linux image: /boot/vmlinuz-5.14.0-1051-oem
Found initrd image: /boot/initrd.img-5.14.0-1051-oem
Found Windows Boot Manager on /dev/nvme0n1p1@/EFI/Microsoft/Boot/bootmgfw.efi
Adding boot menu entry for UEFI Firmware Settings
done