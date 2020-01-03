#!/usr/bin/env bash
#
# jumpserver


while true;do
        trap ':' INT EXIT TSTP TERM HUP
        clear
	cat <<-EOF
	+-------------------------------------+
	|	JumpServer @Version1.0	      |
	+-------------------------------------+
	|    a. WebServer Apache.	      |
	|    b. MySQL Databases Server.	      |
	|    c. PHP Development Computer.     |
	|    d. Quit			      |
	+-------------------------------------+
EOF
	read -p "Please input your jump to server's number: " computer
	case $computer in
	a)
		ssh jumpserver@192.168.123.12
		;;
	b)
		ssh jumper@192.168.161.130
		;;
	c)
		ssh jumper@192.168.161.131
		;;
	d)
                sudo kill -9 $PPID
		;;
	*)
		printf "ERROR: Please redo your select!"
		;;
	esac
done
