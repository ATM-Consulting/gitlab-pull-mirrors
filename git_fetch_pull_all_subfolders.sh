#!/bin/bash

################
# Uncomment if you want the script to always use the scripts
# directory as the folder to look through
SCRIPTFOLDER="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
#SCRIPTFOLDER=`pwd`

REPOSITORIES="$SCRIPTFOLDER/mirrors" 

IFS=$'\n'

for REPO in `ls "$REPOSITORIES/"`
do
  if [ -d "$REPOSITORIES/$REPO" ]
  then
    echo "Updating $REPOSITORIES/$REPO at `date`"
    if [ -d "$REPOSITORIES/$REPO/branches" ]
    then
      cd "$REPOSITORIES/$REPO"
#      git status
      echo "Fetching from origin"
      git fetch origin
      echo "Pushing to gitlab"
      git push -f gitlab --all
#      git push gitlab --delete $(git tag -l)
      git push -f gitlab --tags
    else
      echo "Skipping because it doesn't look like it has a .git folder."
    fi
    echo "Done at `date`"
    echo
  fi
done
