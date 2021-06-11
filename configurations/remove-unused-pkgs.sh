#!/bin/bash
# 
# Source from: http://www.waveguide.se/?article=how-to-quickly-remove-all-unused-packages-under-debian 
# 
# Date: 24/04/2021

ORPHANS=`deborphan`
if [ ! -z "$ORPHANS" ]; then
    dpkg --remove $ORPHANS
fi

PURGES=`dpkg --list | grep ^rc | awk '{ print $2; }'`
if [ ! -z "$PURGES" ]; then
    dpkg --purge $PURGES
fi

