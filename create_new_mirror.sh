#!/bin/bash

################
# Uncomment if you want the script to always use the scripts
# directory as the folder to look through
REPOSITORIES="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
#REPOSITORIES=`pwd`

read -p 'Source repository to mirror : ' sourcerepos
read -p 'Destination repository : ' mirrorripos
read -p 'Folder Name : ' foldername

cd "$REPOSITORIES"
git clone --mirror "$sourcerepos" "$foldername"
cd "$foldername"
git remote add --mirror=fetch gitlab "$mirrorripos"
git fetch origin
git push gitlab --all
cd "$REPOSITORIES"
