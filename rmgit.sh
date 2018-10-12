#!/bin/bash
echo "参数是$1"
eval "git co master"
eval "git pull"
eval "git co $1"
eval "git merge master"
eval "git diff master"
