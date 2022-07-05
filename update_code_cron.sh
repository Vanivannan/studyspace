#!/bin/sh
export LANG=zh_CN.UTF-8

# 0,30 * * * * /bin/sh /opt/opensource/studyspace/update_code_cron.sh 2>&1 >/opt/opensource/studyspace/$(date +\%Y\%m\%d).log
echo ''
echo "update time is: `date`"
echo '**********************************************************************************'
cd /opt/opensource/studyspace
echo `date` >>tip.txt
git add --all && git commit -m "update file"
git push -u origin master
git stash
git pull -u origin master
git status
echo '**********************************************************************************'
