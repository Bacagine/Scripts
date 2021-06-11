#!/bin/bash
# 
# Script criado para a instalação do kernel
# linux-libre
# 
# Date:26/05/2020

sudo apt-get install apt-transport-https
#sudo apt-get edit-sources
sudo echo deb https://linux-libre.fsfla.org/pub/linux-libre/freesh/ freesh main >> /etc/apt/sources.list.d/linux-libre.list
wget https://jxself.org/gpg.inc
echo "Verifique se a fingerprint é semelhante a esta: Key fingerprint = F611 A908 FFA1 65C6 9958 4ED4 9D0D B31B 545A 3198"
gpg --keyid-format long --with-fingerprint gpg.inc
sleep 30
sudo apt-key add < gpg.inc
rm gpg.inc
sudo apt-get update
sudo apt-get install linux-libre -d
sudo apt-get install linux-libre -y
cd /boot/grub
sudo ln -s grub.cfg libreboot_grub.cfg
shutdown -r now

