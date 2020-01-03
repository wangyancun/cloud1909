#!/usr/bin/env bash



which expect &>/dev/null
if [ $? -ne 0 ];then
  yum -y install expect
fi
echo "expect is installed."

/usr/bin/expect <<-EOF
spawn ssh root@192.168.123.12
expect "*yes/no*" { send "yes\r" }
expect "*password*" { send "1\r" }
expect eof
EOF
