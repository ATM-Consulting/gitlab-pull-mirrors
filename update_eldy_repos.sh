#!/bin/bash

# script de mise à jour des depots de eldy vers gitlab



ELDY_FOLDER="/home/gitlab-pull-mirrors/replique_eldy/DoliMods"
SPLIT_FOLDER="/home/gitlab-pull-mirrors/replique_eldy_splitted"
DEST_BRANCH="master_eldy"


# MAJ du repos source
cd $ELDY_FOLDER
git pull origin master



# Mise jour de concat PDF
cd "${SPLIT_FOLDER}/concatpdf"
git  checkout $DEST_BRANCH
cp -r  "${ELDY_FOLDER}/htdocs/concatpdf" "${SPLIT_FOLDER}/concatpdf"
git add .
git commit -am "auto Updated from eldy repo"
git push origin $DEST_BRANCH






