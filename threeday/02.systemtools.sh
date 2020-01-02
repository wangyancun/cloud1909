#!/usr/bin/env bash
#
# 注释!

while true;do
	cat <<-EOF
		+-------------------------------------+
		|          system tools               |
		+-------------------------------------+
		|    a. 打印hello world               |
		|    b. 打印hello 1909                |
		|    c. 打印clouds                    |
        |    d. 刷新                          |
		|    q. 退出                          |
		+-------------------------------------+
EOF
	read -p "please input your choose: " choose
	case ${choose} in
	  a)
	    echo "hello world"
	    ;;
	  b)
	    echo "hello 1909"
	    ;;
	  c)
	    echo "clouds"
	    ;;
          d)
            clear
            ;;
	  q)
	    #exit
            break
	    ;;
	  *)
	    echo "请根据菜单选择输入!"
	    ;;
	esac
done
