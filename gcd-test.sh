#!/bin/bash

x=$( yes ' 2 22' | (./gcd.sh) )
if [ x==2 ]; then
  echo 'OK'
else
  echo 'NG'
  exit 1
fi
