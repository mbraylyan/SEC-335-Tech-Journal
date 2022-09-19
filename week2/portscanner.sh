#!/bin/bash

hostfile=$1
portfile=$2
if [ -z "$1" -o -z "$2" ]; then
	echo "Please supply a list of hosts followed by a list of ports."
else
echo "host,port"
	for host in $(cat $hostfile); do
		for port in $(cat $portfile); do
			timeout .1 bash -c "echo >/dev/tcp/$host/$port" 2>/dev/null && echo "$host,$port"
		done
	done
fi

