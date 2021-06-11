#!/bin/bash
# 
# Atualiza o discord automaticamente
# 
# Script desenvolvido por Billy Galbreath
# modificado por Gustavo Bacagine <gustavo.bacagine@protonmail.com>
# 
# Data: 20/10/2020

### ensure script is run as root/sudo
if ! [ $(id -u) = 0 ]; then
    if [ "$1" ]; then
        printf "\033[1;31mError:\033[m root privileges required!\n"
        exit 1
    fi
    sudo sh $0 "1"
    exit $?
fi

### download and install as root
wget -O /tmp/discord-installer.deb "https://discordapp.com/api/download?platform=linux&format=deb"
apt install /tmp/discord-installer.deb

