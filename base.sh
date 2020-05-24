#！/bin/bash

# 查看当前目录路径 
# pwd 

# 查看目录信息 ls 
# -l 查看目录属性 命令别名 ll
# -d 查看目录本身
# -a 查看所有文件

# touch 新建文件

# mkdir 新建文件夹
# mkdir -p /data/web/jj # 多目录下新建文件夹

# rm 删除文件
# -r 删除目录
# -f 强制删除
# rm -rf /data/* 删除全部

# cp src newsrc 拷贝文件/目录（-r）

# wget http://baidu.com  查看一个地址是否可以访问

# cat /data/index.html 查看文件

# yum install [-y] 下载安装命令 

# mv old  new 重命名

# head -n  文件名 查看文件前n行内容

# tail -n 文件名 查看文件后n行内容

# du 查看目录/文件大小 
# -sh 人性化显示

#find 在目录中找符合条件的文件或者目录
# 语法 find 目标目录 匹配条件
# find /data/ -name '*sh*'
# -name 匹配名称
# -type d 目录
# -type f 文件
# find -name 'base.sh' -type f

# | 管道符号 ---》 把前一个命令的结果传给下一个命令

# ps -ef 查看所有进程

# grep '' 过滤 通常跟管道一起使用

# 修改权限命令 chmod  chown 

# chmod

#chown 777 文件/目录

# free   查看内存
# -m 以m为单位

# top 查看系统整体资源 （window 任务管理器）

# netstat -an 查看端口
# -tlnp 查看

# kill -9 杀死进程

#  环境变量
# 用户环境变量 /root/.bash_profile
# 系统环境变量 /etc/profile

#位置变量
# --- 通常和脚本联合使用
# --- $0 $1 ...

# 自定义变量
# 语法 name=[value]
#--注意： 变量等号两边不能有空格
#         变量对大小写面擀
# stone=3 STONE=25
# 试用$stone

#变量取值
# $变量名

# 算数运算 格式 + - / * %
# -- $((表达式))
#-- $[表达式]
# -- expr 表达式

# 内置测试判断
# --- test 表达式
# --- [ 表达式 ]
# 常用判断 数值
# -lt 小于
# -gt 大于
# -eq 等于
# -ge 大于等于
# -le 小于等于
# test $a -lt $b
# [  $a -lt $b ] // 两边需要空格

# 逻辑运算
# && 与 cmd1 && cmd2 cmd1执行成功了才执行cmd2
# || 或 cmd1 || cmd2 cmd1执行失败才执行cmd2
# ; cmd1;  cmd2 cmd1执行完了才执行cmd2

# 字符串 比较
# = / !=
# -z 判断字符串是否为空  a="" [ -z "$a" ]  为空则为真
# -n 判断字符串长度不为0 

# 用在判断里的  || ==》 -o  [ $a=$b -o $a=$c ]
#               && == 》 -a  [ $a=$b -a $a=$c ]

# 文件测试
# -e 文件名 文件是否存在
# -r 文件名 文件是否存在且可读
# -w 文件名 文件是否存在且可写
# -x 文件名 文件是否存在且可执行
# -s 文件名 文件存在且至少有一个字符
# -d 文件名 文件存在且为目录
# -f 文件名 文件存在且为普通文件

# Date 对象
# date -s xxxx-xx-xx  修改系统时间
# date '+%Y%m%d%H%M%s' 得到20121212091230 的时间