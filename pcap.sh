#!/bin/bash
CURRENT_PATH=`pwd`
if [ -z "$1" ]; then
	name="capture";
else
	name="$1";
fi

echo "Capturing packets to $CURRENT_PATH/$name.pcap"
sudo tcpdump -s 0 -i any -w "$name.pcap"
