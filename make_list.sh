#!/bin/sh

wget --no-check-certificate -c -O CN.txt https://raw.githubusercontent.com/soffchen/GeoIP2-CN/release/CN-ip-cidr.txt

{
echo "/ip firewall address-list"

for net in $(cat CN.txt) ; do
  echo "add list=CNIP address=$net comment=CNIP"
done

} > cnip.rsc
