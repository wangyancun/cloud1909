#!/usr/bin/env bash
# 上方的写法是标准的shell脚本解释器
#
# 解释器的写法总结:(缺点: 更换环境后,极有可能找不到相应的解释器路径)
#	1. #!/bin/bash
#	2. #!/usr/bin/bash
#	3. #!/usr/local/bin/bash


# echo在打印字符的时候, 会在字符的结尾自动增加换行;
echo "hello world"

# printf在打印字符的时候, 不会再结尾增加换行符, 需手动添加;
printf "hello world\n"

# cat可以打印内容,cat所接收的内容为EOF之间的内容, 并打印所接收的内容; 
cat <<-EOF
this is cat <<-EOF EOF output.
hello:
- world
- kitty
EOF

# echo将双引号中的内容, 进行输出
echo "
this is echo output.
hello:
-world
-kitty
"

# printf将双引号中的内容进行输出, 但不会在结尾增加换行;
printf "
this is printf output.
hello:
world
kitty"





