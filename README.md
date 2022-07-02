# studyspace

git branch -m main master
git fetch origin
git branch -u origin/master master
git remote set-head origin -a

echo "# studyspace" >> README.md
git init
git add README.md
git commit -m "first commit"
git branch -M master
git remote add origin git@github.com:Vanivannan/studyspace.git
git push -u origin master
