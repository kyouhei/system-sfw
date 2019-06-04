#!/bin/bash

# usage
function usage {
cat <<_EOT_
Usage:
  $0

Description:
  ２つの自然数の最大公約数を求めます。2つの自然数をスペース区切りで入力してください

Options:
  -h    マニュアルを表示

_EOT_
exit 1
}

# -h オプションが指定されたらusageを表示
if [ "$1" == "-h" ]; then
  usage
  exit 0
fi

# 入力パラメータを読み込む
read a b

# 引数のチェック
if [ -z $a -o -z $b ]; then
 echo "実行するにはスペース区切りで2個の自然数が必要です。" 1>&2
 exit 1
fi

m=$a

if [ $b -lt $m ]
then
  m=$b
fi

# 最大公約数を求める
while [ $m -ne 0 ]
do
  x=`expr $a % $m`
  y=`expr $b % $m`

  if [ $x -eq 0 -a $y -eq 0 ]; then
    # Printing the greatest gcd of two given number
    echo "$m"
    break
  fi
  m=`expr $m - 1`
done
