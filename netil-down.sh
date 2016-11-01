#!/bin/sh

PPTP=`cat /etc/ppp/012cable.conf | awk 'NR==1'`
route del -host $PPTP
killall pppd
sleep 2
killall pptp-linux
sleep 2
dhclient eth0
