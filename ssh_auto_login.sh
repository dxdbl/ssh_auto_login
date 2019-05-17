#!/bin/bash
# ssh_auto_login.sh
#
# @base     expect
# @author   dxdbl
# @link     https://github.com/dxdbl/ssh_auto_login
#
# $ git clone https://github.com/dxdbl/ssh_auto_login.git
# $ 
# $ 
#

# 安装 expect 组件
yum remove expect -y
rpm -Uvh ./packages/expect-5.45-14.el7_1.x86_64.rpm 

# 读取配置文件
cat ./config | while read line
do
	echo ${line}

done
