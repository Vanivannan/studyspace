#!/bin/sh
export LANG=zh_CN.UTF-8

echo `date`
echo '**********************************START************************************************'
cd /opt/opensource/studyspace
git stash
git pull -u origin master
echo `date`>>tip.txt
git status
git add .
git commit -m "update file"
git push -u origin master
echo '***********************************END**************************************************'
