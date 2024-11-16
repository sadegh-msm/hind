#!/bin/bash

docker-compose up -d

my_ip='127.0.0.1'
echo "Namenode: http://${my_ip}:50070"
echo "Datanode: http://${my_ip}:50075"

