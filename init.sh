#!/bin/bash
sed -i 's|http://deb.debian.org/debian|http://archive.debian.org/debian|g' /etc/apt/sources.list
sed -i 's|http://security.debian.org|http://archive.debian.org/debian-security|g' /etc/apt/sources.list
apt-get update 
apt-get install --force-yes vim nano -y 
/run.sh
