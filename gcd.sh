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

# 2つの引数が必要
if [ $# != 2 ]; then
echo "実行するにはスペース区切りで2個の自然数が必要です。" 1>&2
  exit 1
fi

m=$1

if [ $2 -lt $m ]
then
  m=$2
fi

# 最大公約数を求める
while [ $m -ne 0 ]
do
  x=`expr $1 % $m`
  y=`expr $2 % $m`

  if [ $x -eq 0 -a $y -eq 0 ]; then
    # 最大公約数を表示
    echo "$m"
    exit 0
  fi
  m=`expr $m - 1`
done
