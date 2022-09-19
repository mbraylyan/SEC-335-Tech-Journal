#!/bin/bash

ip=$1
port=$2
i="0"
if [ -z "$1" -o -z "$2" ]; then
	echo "Please supply the first 3 octets of an IP and a port."
else
echo "ip,port"
	while [ "$i" -lt "256" ]; do
			timeout .1 bash -c "echo >/dev/tcp/$ip.$i/$port" 2>/dev/null && echo "$ip.$i,$port"
			let "i+=1"
	done
fi

