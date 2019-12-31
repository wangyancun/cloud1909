#!/usr/bin/env bash
#
# usage: case conditions


# 独立出每一个条件的框架; 场景: 有多个独立的条件需要判断;
#if [];then
#elif [];then
#elif [];then
#else
#fi

# case独立出每一个任务(执行的命令); 场景: 系统工具(有多个功能)
printf "\e[1;43m
        +-----------------------------------+
        |                Meun	            |
        +-----------------------------------+
        |     1. 打印hello world	    |
        |     2. 统计系统中用户的数量       |
        |     3. 创建一个用户               |
        |     q. 退出                       |
        +-----------------------------------+
\e[0m"
printf "\e[1;31mplease input choose: \e[0m" && read variable
case $variable in
  1)
    echo "hello world"
    ;;
  2)
    echo "此系统中用户数量为: $(wc -l /etc/passwd | awk -F" " '{ print $1 }')"
    ;;
  3)
    bash ./createuser
    ;;
  q)
    exit
    ;;
  *)
    echo "please input in (1 2 3 q)"
    ;;
esac



