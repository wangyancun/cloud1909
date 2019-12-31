#!/usr/bin/env bash
#
# usage: many condition -->> and or ->(shell) ->> && ||


read -p "please input: " number
# style01:
if [ ${number} -gt 5 ];then
  if [ ${number} -gt 8 ];then
    echo "^_-!"
  fi
fi
echo $$
# style02:
if [[ ${number} -gt 5 ]] && [[ ${number} -gt 8 ]];then
  echo "^_-!"
fi
