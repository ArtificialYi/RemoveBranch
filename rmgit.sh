#!/bin/bash
echo "参数是$1"
eval "git co master"
eval "git pull"
eval "git co $1"
eval "git merge master"
eval "git diff master"

echo "看到diff之后，你想要删除这个分支么?(y/n)"
read Arg
if [[ $Arg == "y" ]] || [[ $Arg == "Y" ]]; then
    eval "git co master"
    eval "git branch -D $1"
    echo "删除成功:$1"
    eval "git branch"
elif [[ $Arg == "n" ]] || [[ $Arg == "N" ]]; then 
    echo "不删除这个分支:$1"
    eval "git branch"
else
    echo "这个是啥"
fi
