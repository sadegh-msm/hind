#!/bin/bash
sed -i 's|http://deb.debian.org/debian|http://archive.debian.org/debian|g' /etc/apt/sources.list
sed -i 's|http://security.debian.org|http://archive.debian.org/debian-security|g' /etc/apt/sources.list
apt-get update 
apt-get install --force-yes vim nano  -y 
echo "deb http://archive.debian.org/debian jessie-backports main" | tee -a /etc/apt/sources.list
apt-get update -o Acquire::Check-Valid-Until=false --fix-missing
wget http://archive.debian.org/debian/pool/main/d/dh-python/dh-python_2.20170125~bpo8+1_all.deb
dpkg -i dh-python_2.20170125~bpo8+1_all.deb
apt-get install  --force-yes -y -f

/run.sh
