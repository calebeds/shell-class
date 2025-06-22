#!/bin/bash

# This script show the open network ports on a system.
# Use -4 as an argument to limit to tcpv4 ports.

if [[ "${1}" = '-4' ]] || [[ "${1}" = "" ]]
then
  netstat -nutl ${1} | grep ':' | awk '{print $4}' | awk -F ':' '{print $NF}'
  exit 0
else
  echo "${1} is not a valid option"
  exit 1 
fi

