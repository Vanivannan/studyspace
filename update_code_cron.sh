#!/bin/sh
set -x
export LANG=zh_CN.UTF-8
source_path=/opt/projects/studyspace

# 0,30 * * * * /bin/sh /opt/projects/studyspace/update_code_cron.sh 2>&1 >/opt/opensource/studyspace/$(date +\%Y\%m\%d).log
echo ''
echo "update time is: `date`"
echo '**********************************************************************************'
cd $source_path
echo `date` >>tip.txt
git add --all && git commit -m "update file"
git push origin master
git stash
git pull origin master
git status
echo '**********************************************************************************'
