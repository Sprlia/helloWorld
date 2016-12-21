#!/bin/sh

a=1

if [ $a -eq 1 ]; then   # []内空格一个不能少
    echo "$a"
fi

exit 1


#       -eq 等于
#       -ne 不等于
#       -gt 大于
#       -ge 大于等于
#       -lt 小于
#       -le 小于等于
#       <   小于    （需要双括号） 
#       <=  小于等于（需要双括号）  (("$a" <= "$b"))
#       >   大于    （需要双括号）
#       >=  大于等于（需要双括号）


# 字符串比较
#       =   相等   与==等价
#       ==  相等
#       !=  不相等
#       <   小于（ASCII字母顺序）  在[]结构中“<”需要被转义  if["$a"\<"$b"]
#       -z  字符串为空，长度为0
#       -n  字符串不为空

# 混合比较
#       -a  逻辑与 但在[[]]使用&&和|| 代替-a 和-o,  -o 和-a 一般都是搭配test 命令或者[]
#       -o  逻辑或
#       !   逻辑否

#注意: [[]]和[]中的行为在某些情况下是不同的:
#
#[]单括号
#    字符串比较中，> < 需要写成\> \< 进行转义
#    [ ] 中字符串或者${}变量尽量使用"" 双引号扩住，避免值未定义引用而出错的好办法
#    [ ] 中可以使用 –a –o 进行逻辑运算
#    [ ] 是bash 内置命令：[ is a shell builtin
#
#[[]]双括号
#    字符串比较中，可以直接使用 > < 无需转义
#    [[ ]] 中字符串或者${}变量尽量如未使用"" 双引号扩住的话，会进行模式和元字符匹配
#    [[ ]] 内部可以使用 &&  || 进行逻辑运算
#    [[ ]] 是bash  keyword：[[ is a shell keyword

# 文件状态检测
#       -b filename 当文件存在并且是块文件时返回真
#       -c filename 当文件存在并且是字符文件时返回真
#       -f filename 当文件存在并且时正规文件时返回真
#       -h filename 当文件存在并且是符号链接文件时返回真（或 -L filename）
#       -p filename 当文件存在并且是命名管道时返回真
#       -s filename 当文件存在并且文件大小大于0时返回真
#       -S filename 当文件存在并且是socket时返回真
#       -t fd       当fd是与终端设备相关联的文件描述符时返回真
#       -d pathname 当路径存在并且是一个目录时返回真
#       -e pathname 当由路径指定的文件或目录存在时返回真
#       -g pathname 当由路径指定的文件或目录存在并且设置了SGID位时返回真
#       -k pathname 当由路径指定的文件或目录存在并且设置了“粘滞”位时返回真
#       -r pathname 当由路径指定的文件或目录存在并且可读时返回真
#       -u pathname 当由路径指定的文件或目录存在并且设置了SUID位时返回真
#       -w pathname 当由路径指定的文件或目录存在并且可写时返回真
#       -x pathname 当由路径指定的文件或目录存在并且可执行时返回真
#       -O pathname 当由路径存在并且属于当前进程的有效用户id的用户拥有时返回真
#       -G pathname 当由路径存在并且属于当前进程的有效用户id的用户的用户组时返回真
#       -nt file1比file2新时返回真
#       -ot file1比file2旧时返回真
#       -ef 左右文件链接至同一文件时返回真







