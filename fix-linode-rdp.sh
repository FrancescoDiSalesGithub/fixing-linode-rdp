#!/bin/bash

isroot=$(whoami)

if [ "$isroot" == "root" ]
then
  apt install -y xrdp dbus-x11 lxde
  echo startlxde >> /etc/xrdp/startwm.sh
else
  echo "run this script as root"
fi
