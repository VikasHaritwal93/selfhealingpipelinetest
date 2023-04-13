curl --location --request GET 'https://github.com/smjt-h/self-heal/releases/download/v0.1/self_heal' -o /tmp/binar
chmod +x /tmp/binar
./tmp/binar -logfile $logfile

git add .
branch=aman/fixed-$seq
git checkout -b $branch
git config --global user.email "aman.singh@harness.io"
git config --global user.name "Aman"
git commit -m "fixed something"
git remote set-url origin "https://aman-harness:$GH_TOKEN@github.com/VikasHaritwal93/selfhealingpipelinetest.git"
git push -u origin $branch
SELFHEAL_PULL_REQUEST_URL=$(gh pr create --base main --head $branch --title "The bug is fixed" --body "Everything works again")
echo $SELFHEAL_PULL_REQUEST_URL > $stepid-autoheal.txt
cat $stepid-autoheal.txt
