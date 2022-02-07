# gitlab-pull-mirrors
Enable sync between repos


- Use create_new_mirror.sh to create new sync repos
  1. Set source repot
  2. Set destination repos
  3. Set folder name
  
- Add git_fetch_pull_all_subfolders.sh to cron task
   This script will pull and push mirror 
