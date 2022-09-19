#! bin/bash

$prefix = $1
$dns = $2

for $ip in (seq 2 255); do
	nslookup $prefix.$ip $dns
done

