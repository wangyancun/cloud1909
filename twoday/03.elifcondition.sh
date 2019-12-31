#!/usr/bin/env bash
#
# usage: elif: 当有多个独立的条件时, 可以使用elif来判断多个条件;


read -p "input: " number
if [ ${number} -gt 11 ];then
  echo "number > 11"
elif [ ${number} -gt 5 ];then
  echo "number > 5"
elif [ ${number} -gt 8 ];then
  echo "number > 8"
else
  echo "number < 5"
fi
