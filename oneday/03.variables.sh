#!/usr/bin/env bash
#
# 写注释!


# 变量定义: -> 简称变化的量: -> 变量的值 存储的地方为一小段内存 -> 那么变量的名字和内存的地址是关联的
# 使用变量的名字 就是 在使用内存的地址;

# 变量的声明
var01="hello world"

# 变量的调用
echo "第一种调用变量的方式: $var01i"
echo "推荐使用的方式: ${var01}i"

# 在shell中多个变量在同一行声明;
var02="hello"; var03="world"
echo "${var02} ${var03}"

# 局部变量和全局变量
# 局部变量: 由local关键字声明的变量,叫做局部变量;
# 全局变量: 在shell脚本中, 所声明的普通变量就是全局变量;
var04="这是全局变量"

tools() {
  local var04="这是局部变量"
  echo "这里是函数的内部: ${var04}"
}

tools
echo "调用函数内部的变量的值: ${var04}"

# 变量的置换
nmac="hoool";mMAC="wrrrl"
echo "变之前: ${nmac} ${mMAC}"

three=${nmac}
nmac=${mMAC}
mMAC=${three}
echo "变之后: ${nmac} ${mMAC}"










