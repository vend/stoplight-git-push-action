#!/bin/sh

set -e

cd ..

git clone https://$STOPLIGHT_USERNAME:$STOPLIGHT_GIT_TOKEN@git.stoplight.io/$STOPLIGHT_ORG/$STOPLIGHT_PROJECT.git

echo
echo "-- Environment variables ----------------------------------------------"
env
echo "-----------------------------------------------------------------------"

echo
echo "-- File system --------------------------------------------------------"
tree
echo "-----------------------------------------------------------------------"

cp ../$STOPLIGHT_PROJECT/$HUB_FILEPATH /workspace/$HUB_FILEPATH

cd workspace

git add .A
git commit -m "hub file update from GitHub"
git push
