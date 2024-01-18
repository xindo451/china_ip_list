#!/bin/sh

wget https://raw.githubusercontent.com/17mon/china_ip_list/master/china_ip_list.txt

{
echo "/ip firewall address-list"

for net in $(cat china_ip_list.txt) ; do
  echo "add list=CNIP address=$net comment=CNIP"
done

} > cnip.rsc
