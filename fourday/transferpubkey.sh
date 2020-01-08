#!/usr/bin/env bash
#
# usage: transfer pub key


# 判断系统中是否存在秘钥对
if [ -f $HOME/.ssh/id_rsa ];then
  # 开始传送公钥
  which expect &>/dev/null
  if [ $? -ne 0 ];then
    yum -y install expect &>/dev/null
  fi
  /usr/bin/expect <<-EOF
  spawn ssh-copy-id root@192.168.123.12
  expect "*yes/no*" { send "yes\r" }
  expect "*password*" { send "1\r" }
  expect eof
EOF
else
  which expect &>/dev/null
  if [ $? -ne 0 ];then
    yum -y install expect &>/dev/null
  fi
  ssh-keygen -t rsa -b 4096 -N "" -f $HOME/.ssh/id_rsa
  /usr/bin/expect <<-EOF
  spawn ssh-copy-id root@192.168.123.12
  expect "*yes/no*" { send "yes\r" }
  expect "*password*" { send "1\r" }
  expect eof
EOF
fi
