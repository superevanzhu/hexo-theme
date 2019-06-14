#!/bin/bash

# desc: 该脚本用于一键构建m.ngmm365.com的线上代码，并自动提交到远程git仓库
# author: zhuwang<zhuwang@nicomama.com>
# date: 2018年 6月15日 星期五 19时48分06秒 CST


dest="./"


commit(){
    echo +++commit start
    # 记录现在的目录位置，最后要回来的
    cur=`pwd`

    # 进入git目录
    cd $dest
    # 提交的字符串
    commit_str="commited in `date '+%Y-%m-%d_%H:%M:%S'`"
    
    git add .
    git commit -am "${commit_str}"
    git push origin master

    # 回到原来的目录
    cd $cur
    echo ---commit end
}


# hexo g

# hello()

commit