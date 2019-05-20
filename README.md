# ssh_auto_login
## 简介
ssh_auto_login是一个简单的ssh免密配置工具，功能简单，通过bash shell和expect实现，目的是快速在新装集群的机器之间实现ssh免密的配置。
## 使用
将整个目录上传至机器上，配置好集群机器信息，直接执行 ssh_auto_login.sh 脚本即可
## 目录和文件作用
packages                                         # rpm包存放位置 （yum不可用时需要）

config                                             # 机器信息配置文件

expect                                            #  expect脚本

ssh_auto_login.sh                              #执行的bash shell脚本
## 使用示例

1. 修改 config 文件，添加机器信息
2. 直接运行 ssh_auto_login.sh 脚本

 <img src="https://github.com/dxdbl/ssh_auto_login/blob/master/images/ssh_auto_login.png" width = "300" height = "200" alt="image" align=center />
