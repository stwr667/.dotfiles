REPOS=($HOME/src/atlassian/barrel
$HOME/src/atlassian/barrel-rack
$HOME/src/atlassian/automation-monitoring
$HOME/src/atlassian/automation-provisioner
$HOME/src/atlassian/pm2-automation
$HOME/src/atlassian/cdss-scripts
)
SINCE_NUM_WEEKS_AGO=4
MAX_NUM_COMMITS=25
echo "####################################################"
echo "####################################################"
echo "Showing logs across repos in the last $SINCE_NUM_WEEKS_AGO weeks, max commits: $MAX_NUM_COMMITS"
echo "####################################################"
echo "####################################################"

for repo in ${REPOS[@]};do
    printf "\n\n\n\n\n"
    printf "====> Showing log of Repository: %s <====\n\n" "$repo"
    git -C "$repo" --no-pager log -n $MAX_NUM_COMMITS --author=Stephen --since="$SINCE_NUM_WEEKS_AGO weeks ago"
done


# Original script, from https://stackoverflow.com/a/50883219/1852005
#CODE_BASE=($HOME/src/atlassian/
#)
#EXCLUDE_REPO_REGEX="gitRepoYouWantToIgnore" #this is regex
#
#for base in ${CODE_BASE[@]};do
#    echo "##########################"
#    echo "   scanning $base"
#    echo "##########################"
#    for line in $(find "$base" -name ".git"|grep -v "$EXCLUDE_REPO_REGEX"); do
#        line=$(sed 's#/\.git##'<<<"$line")
#        repo=$(awk -F'/' '$0=$NF' <<<"$line")
#        echo "##########################"
#        echo "====> Showing log of Repository: $repo <===="
#        echo "##########################"
#        echo "LINE IS:"
#        echo "$line"
#        git -C "$line" --no-pager log -1
#    done
#done
