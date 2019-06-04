#!/bin/bash
exit 1
echo '2と22の最大公約数は2'
x=$( yes ' 2 22' | (./gcd.sh) )
if [ $x = 2 ]; then
  echo 'OK'
else
  echo 'NG'
  exit 1
fi

echo '3と13の最大公約数は9ではない'
x=$( yes ' 3 13' | (./gcd.sh) )
if [ ! $x = 9 ]; then
  echo 'OK'
else
  echo 'NG'
  exit 1
fi
