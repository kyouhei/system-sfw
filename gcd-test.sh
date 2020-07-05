#!/bin/bash

echo '引数が2つでなければエラー'
x=$(./gcd.sh 2)
if [ $? = 1 ]; then
  echo 'OK'
else
  echo 'NG'
  exit 1
fi

echo 'マニュアル表示'
x=$(./gcd.sh -h)
echo $?
if [ $? = 0 ]; then
  echo 'OK'
else
  echo 'NG'
  exit 1
fi

echo '2と22の最大公約数は2'
x=$(./gcd.sh 2 22)
if [ $x = 2 ]; then
  echo 'OK'
else
  echo 'NG'
  exit 1
fi

echo '3と13の最大公約数は9ではない'
x=$(./gcd.sh 3 13)
if [ ! $x = 9 ]; then
  echo 'OK'
else
  echo 'NG'
  exit 1
fi

