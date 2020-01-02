#!/usr/bin/env bash
#
# 这里写注释!


# while的框架结构
#if [ $? -eq 0 ];then
#else
#fi

n=1
while [ ${n} -le 100 ];do
  echo "${n} hello world"
  echo "-#-#-#-#-#-#-#-#-#-#-#-"
  let n=${n}+1
done

# while死循环框架
while true;do
  echo "hello world"
done
