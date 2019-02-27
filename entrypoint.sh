#!/bin/sh

set -e

cd ..

git clone https://$STOPLIGHT_USERNAME:$STOPLIGHT_TOKEN@git.stoplight.io/$STOPLIGHT_ORG/$STOPLIGHT_PROJECT.git

echo
echo "-- Environment variables ----------------------------------------------"
env
echo "-----------------------------------------------------------------------"

cd $STOPLIGHT_PROJECT

echo
echo "-- File system --------------------------------------------------------"
tree
echo "-----------------------------------------------------------------------"
