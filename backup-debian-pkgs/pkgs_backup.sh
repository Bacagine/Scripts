#!/usr/bin/sh
# 
# Save a list of all deb packages installed in your system in
# a file called deb_packages.txt

sudo apt list --installed | awk -F/ -v ORS=" " 'NR>1 {print $1}' > deb_packages.txt
#sudo dpkg-query -f '${binary:Package}\n' -W > deb_packages_list.txt

