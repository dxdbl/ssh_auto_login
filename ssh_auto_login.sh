#!/bin/bash
# ssh_auto_login.sh
#
# @base     expect
# @author   dxdbl
# @link     https://github.com/dxdbl/ssh_auto_login
#
# $ git clone https://github.com/dxdbl/ssh_auto_login.git
# $ 
# $ Are you sure you want to continue connecting (yes/no)?
#
#
# 安装相关组件 
yum -y install expect 
yum -y install openssh-clients

# 生成密钥(如有旧密钥,先清除)
rm -rf /root/.ssh/id_rsa*
ssh-keygen -f /root/.ssh/id_rsa -t rsa -N ''

# 修改expect脚本权限
chmod +x ./ssh_copy_id.expect

# 读取配置文件,分发公钥
cat ./host.conf | while read line
do
	echo ${line}
	ip_addr=`echo $line |awk '{print $1}'` 
	hostname=`echo $line |awk '{print $2}'` 
	user=`echo $line |awk '{print $3}'`
	password=`echo $line |awk '{print $4}'`
	./ssh_copy_id.expect $ip_addr $hostname $user $password
done


