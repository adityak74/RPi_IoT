#!/bin/bash

# setting MAC adress
# eth# - eth interface to set the mac address for 
# hw:addr - hardware mac address without '<>' - example ff:ff:ff:ee:ee:ee

sudo ifconfig eth1 down
sudo /etc/init.d/networking stop
sudo ifconfig eth1 hw ether <hw:addr>
sudo /etc/init.d/networking start
sudo ifconfig eth1 up
dhclient –r eth1
dhclient eth1