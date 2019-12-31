#!/usr/bin/env bash
#
# usage: for cycle.
# 循环真正解决的问题是: 把重复性工作进行简单化 或 流程化;

# 打印1~100
#for i in {1..100};do
#  echo ${i}
#done

# 将1~100相加并打印结果
#n=0
#for i in {1..100};do
#  #echo "${n}+${i}" | bc
#  let n=${n}+${i}
#done
#echo ${n}

# 企业的内部网络中, 检测存活的服务器, 提前知道有多少台服务器! 也知道各个服务器的IP地址!
# 需求是: 每隔五分钟检测一次, 内网中服务器的存活率;

for ips in {2..254};do
 {
  ping -c1 10.0.111.${ips} &>/dev/null
  if [ $? -eq 0 ];then
    echo "10.0.111.${ips}" >>onlineips.txt
  fi
 }&
done
wait # 等待所有子进程生命周期结束, 将资源返回给父进程后, 对该脚本进行退出;
echo complete ok!
