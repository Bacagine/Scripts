#!/bin/bash
# 
# Created by Gustavo Bacagine <gustavo.bacagine@protonmail.com>
# based on script created for eznix <https://www.youtube.com/watch?v=F60IdOIjlS8>
# 
# Data 25/11/2020

# Disable Snap Services
echo "Disable all Snap Services"
snap_services=$(systemctl list-util-files | grep snap | grep enabled | cut -d ' ' -f 1)
for snap_service in $snap_services; do
	cmd="sudo systemctl disable $snap_service"
	echo $cmd
	$cmd
	sleep 1
done

# Remove all snap packages
echo "Remove and Purge all snap packages"
snap remove --purge $(snap list | awk '{print $1}' | egrep -v "Name|core")

# Remove snap package manager
# and purge all configuration's 
# file
echo "Purge Snapd"
apt-get -yy autoremove --purge snapd
#apt-get -yy autoremove --purge gnome-software-plugin-snap
#apt-get -yy autoremove --purge plasma-discover-backend-snap plasma-discover-snap-backend

echo "Purged all sanp packages and snapd package"
sleep 3

# Remove all directorys
echo "Remove all snap direcotries"
#rm -rfv /root/snap
#rm -rfv /home/*/snap
rm -rfv /snap/
#rm -rfv /etc/apparmor.d/usr.lib.snapd.snap-confine.real
rm -rfv /var/lib/snapd
rm -rfv /var/snap/
rm -rfv /var/cache/snapd/

echo "SNAP KILL ;)"
sleep 4

