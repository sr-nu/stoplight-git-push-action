#!/bin/sh

set -e

cd ..

git config --global user.email $GIT_USER_EMAIL
git config --global user.name  $GIT_USER_NAME

git clone https://$STOPLIGHT_USERNAME:$STOPLIGHT_GIT_TOKEN@git.stoplight.io/$STOPLIGHT_ORG/$STOPLIGHT_PROJECT.git
git checkout version/1.0

cp  ./workspace/$HUB_FILEPATH ./$STOPLIGHT_PROJECT/$HUB_FILEPATH

cd workspace

git add -A
git commit -m "hub file update from GitHub"
git push
