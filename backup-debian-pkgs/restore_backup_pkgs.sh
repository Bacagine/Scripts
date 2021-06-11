#!/usr/bin/sh
# 
# Reinstall all packages listed in deb_packages.txt

#sudo xargs -a deb_packages_list.txt apt install
sudo apt install < ./deb_packages.txt

