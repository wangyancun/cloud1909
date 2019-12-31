#!/usr/bin/env bash
#
# usage: if file's exists and values's size;


# 文件判断存在与否
#[ -e dir|file ] 既可以判断文件的存在也可以判断目录的存在
#[ -d dir ]	 判断目录是否存在
#[ -f file ] 	 判断文件是否存在
#[ -r file ]	 当前用户对该文件是否有读权限
#[ -w file ]	 当前用户对该文件是否有写权限
#[ -x file ]	 当前用户对该文件是否有执行权限

if [ ! -e /opt/exists.txt ];then
  echo "True: this file is exists."
else
  echo "False: this file is not exists."
fi

# 数值比较
#[ 1 -gt 10 ]	大于
#[ 1 -lt 10 ]	小于
#[ 1 -eq 10 ]	等于
#[ 1 -ne 10 ]   不等于
#[ 1 -ge 10 ]	大于等于
#[ 1 -le 10 ]	小于等于

# 判断一个软件是否被安装到了系统中?
read -p "input software's name: " softname
rpm -qa | grep ${softname} &>/dev/null
if [ $? -eq 0 ];then
  echo "this ${softname} is installed."
else
  echo "this ${softname} is not installed."
  echo "yum -y install ${softname} ......"
  yum -y install ${softname} &>/dev/null
  echo "${softname} is installed."
fi










