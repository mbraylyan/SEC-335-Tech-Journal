#!/bin/bash

prefix=$1
dns=$2


if [ -z "$1" -o -z "$2" ]; then
	echo "Please enter both parameters - a network parameter and a dns server parameter."
else
	echo "dns resolution for $prefix"
	for ip in $(seq 2 255); do
		nslookup $prefix.$ip $dns | grep "name"
	done
fi
