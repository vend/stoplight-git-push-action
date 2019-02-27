#!/bin/sh

set -e

cd ..

git clone https://$STOPLIGHT_USERNAME:$STOPLIGHT_GIT_TOKEN@git.stoplight.io/$STOPLIGHT_ORG/$STOPLIGHT_PROJECT.git

echo
echo "-- Environment --------------------------------------------------------"
env
echo "-----------------------------------------------------------------------"

# git config --global user.email "Your@email.com"
# git config --global user.name "Your Name"

echo
echo "-- File system --------------------------------------------------------"
tree
echo "-----------------------------------------------------------------------"

cp  ./workspace/$HUB_FILEPATH ./$STOPLIGHT_PROJECT/$HUB_FILEPATH

cd workspace

git add -A
git commit -m "hub file update from GitHub"
git push
