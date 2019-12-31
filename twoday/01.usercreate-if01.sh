#!/usr/bin/env bash
#
# usage: create users;

read -p "input uid: " uid
awk -F":" '{ print $3 }' /etc/passwd | grep ${uid} &>/dev/null
if [ $? == 0 ];then
  echo "this ${uid} is exists."
  exit
fi

read -p "input gid: " gid
awk -F":" '{ print $4 }' /etc/passwd | grep ${gid} &>/dev/null
if [ $? != 0 ];then
  echo "this group is not exists, please create this group"
  read -p "please input groupname: " groupname
  groupadd -g ${gid} ${groupname}
fi

read -p "input bash's type: " btype
read -p "home location: " homepath
read -p "username: " username
id ${username} &>/dev/null
if [ $? != 0 ];then
  useradd -u ${uid} -g ${gid} -s ${btype} -d ${homepath} ${username}
  echo "${username} is created."
else
  echo "${username} is exists."
fi

