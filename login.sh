#!/bin/bash

source ./data

if [ $# -eq 0 ] || [ $1 -gt 1 ]; then
	echo "usage $0 1 -> connect ; $0 0 -> disconnect"
	exit 1

elif [ $1 -eq 1 ]; then
	curl -ksS -X POST -d "login=LOGIN&user="${USER}"&pass="${PASSWD}"" "${AuthURL}" > /dev/null 2>&1

elif [ $1 -eq 0 ]; then
	curl -ksS -X POST -d "logout" "${AuthURL}" > /dev/null 2>&1

fi
 
ping -c 2 -w 2 google.co.in > /dev/null 2>&1 && echo "Internet ... [✔]" || echo "Internet ... [✘]"
