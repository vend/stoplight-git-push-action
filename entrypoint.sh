#!/bin/sh

set -e

# go level up from the workspace
cd ..

# configure Git
git config --global user.email $GIT_USER_EMAIL
git config --global user.name  $GIT_USER_NAME

# clone the stoplight repository
git clone https://$STOPLIGHT_USERNAME:$STOPLIGHT_GIT_TOKEN@git.stoplight.io/$STOPLIGHT_ORG/$STOPLIGHT_PROJECT.git

# go into the stoplight repo and checkout the "version" branch
cd $STOPLIGHT_PROJECT
git checkout version/1.0

# copy the hub file from workspace to stoplight repo
cp  ../workspace/$HUB_FILEPATH $HUB_FILEPATH

# add, commit and push the stoplight repo
git add -A
git commit -m "hub file update from GitHub"
git push
