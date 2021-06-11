#!/usr/bin/sh
# 
# Developed by Gustavo Bacagine <gustavo.bacagine@protonmail.com>
# 
# Date: 26/04/2021

# Clear old packages
apt-get autoremove
apt-get clean

# Purge all deborphans
ORPHANS=`deborphan`
if [ ! -z "$ORPHANS" ]; then
	dpkg --remove $ORPHANS
fi
PURGES=`dpkg --list | grep ^rc | awk '{ print $2; }'`
if [ ! -z "$PURGES" ]; then
	dpkg --purge $PURGES
fi

# Clear logs
cd /var/log/
find | grep gz$|xargs rm -rvf 
find | grep 1$|xargs sudo rm -rvf 
find | grep old$|xargs sudo rm -rvf

# Clear backups
rm -rvf /var/backups/*.gz

