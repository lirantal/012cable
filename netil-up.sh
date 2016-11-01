#!/bin/sh

#setting initial variables
PPTP=`cat /etc/ppp/012cable.conf | awk 'NR==1'`
USER=`cat /etc/ppp/012cable.conf | awk 'NR==4'`
DNS1=`cat /etc/ppp/012cable.conf | awk 'NR==2'`
DNS2=`cat /etc/ppp/012cable.conf | awk 'NR==3'`

#killing all living instances of the dhcp client, incase it sleeps in the background, so that it doesnt
#wake up to ask for a dhcp discover again and mess everything up.
killall dhclient
killall dhclient3

#setting hot's default gateway
OLD_GW=`route | grep default | awk {'print $2'}`
#adding a static route, pointing the pptp server straight to hot's default gateway
route add -host $PPTP gw $OLD_GW
#running the pptp client
pptp-linux $PPTP debug user "$USER" noauth defaultroute remotename "$PPTP"
sleep 4
#setting up the new gateway which is our ppp0 ip interface
NEW_GW=`ifconfig ppp0 | grep inet | awk {'print $2'} | cut -d ":" -f2`
route add default gw $NEW_GW
#deleting hot's old gateway as we don't need it anymore
route del default gw $OLD_GW

#adding our new nameserver to resolv.conf
echo "nameserver $DNS1" > /etc/resolv.conf
echo "nameserver $DNS2" >> /etc/resolv.conf
