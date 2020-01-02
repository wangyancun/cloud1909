#!/usr/bin/env bash
#
# this is system tools


while true;do
  cat <<-EOF
  ++++++++++++++++++++++++++++++++++++++++++
  |             system tools               |
  ++++++++++++++++++++++++++++++++++++++++++
  |      a. Load user number               |
  |      b. Add user of system             |
  |      c. /opt's file number             |
  |      d. yum repo's number              |
  |      e. alive ipaddress                |
  |      q. exit                           |
  ++++++++++++++++++++++++++++++++++++++++++
EOF
  printf "\e[1;31mplease input your choose: \e[0m" && read choose
  case ${choose} in
    a)
      echo "online user's number is: $(w | grep -v "load average" | grep -v "USER" | wc -l)"
      ;;
    b)
      read -p "Username: " username
      awk -F":" '{ print $1 }' /etc/passwd | grep ${username} &>/dev/null
      if [ $? -eq 0 ];then
        echo "this user is exists"
        exit
      fi

      read -p "home dir location: " homepath
      read -p "user uid: " uids
      awk -F":" '{ print $3 }' /etc/passwd | grep ${uids} &?/dev/null
      if [ $? -eq 0 ];then
        echo "this uid is exists"
      fi

      read -p "user of gid: " gids
      awk -F":" '{ print $4 }' /etc/passwd | grep ${gids}
      if [ $? -ne 0 ];then
        echo "this gid is not exists"
      fi
      read -p "login or nologin: " loginstyle
      if [ ${loginstyle} == "login" ];then
        useradd -u ${uids} -g ${gids} -d ${homepath} -s ${logstyle} ${username}
      elif [ ${loginstyle} == "nologin" ];then
        useradd -u ${uids} -g ${gids} -d ${homepath} -s ${logstyle} ${username}
      else
        echo "your input error!"
      fi
      ;;
    c)
      echo "/opt dir file number: $(ls -l /opt | wc -l)"
      ;;
    d)
      echo "yum repo number: $(ls -l /etc/yum.repos.d | wc -l)"
      ;;
    e)
      >/opt/onlineipaddress
      for ip in {2..254};do
        {
          ping -c1 192.168.123.${ip} &>/dev/null
          if [ $? -eq 0 ];then
            echo "192.168.123.${ip}" >>/opt/onlineipaddress
          fi
        }&
      done
      wait
      cat /opt/onlineipaddress
      ;;
    q)
      exit
      ;;
    *)
      echo "input error"
      ;;
  esac
done
