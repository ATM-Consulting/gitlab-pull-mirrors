# gitlab-pull-mirrors
Enable sync between repos


1. Use create_new_mirror.sh to create new sync repos
  a. Set source repot
  b. Set destination repos
  c. Set folder name
  
2. Add git_fetch_pull_all_subfolders.sh to cron task
   This script will pull and push mirror 
