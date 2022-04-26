#! /bin/bash
set -euo pipefail

# set remote repo
RAW_MD_URL='https://github.com/chenlw0106/himg/raw/master'
PROJECT_PATH='blogimgs'
# set LOCAL_REPO and jump to the repo path
LOCAL_REPO=$HOME'/Documents/Github/himg/'
echo "$LOCAL_REPO"
cd ${LOCAL_REPO}

# show the image added
ADDED_FILE=`git status | grep ${PROJECT_PATH} | awk '{print $1}'`
echo "${ADDED_FILE}"
echo "${ADDED_FILE} added"

# add git add and commit message 、 push
git add ${ADDED_FILE}
git commit -m "added image ${ADDED_FILE}"
git push
echo "test"
# get the img url in md style
echo "${RAW_MD_URL}/${ADDED_FILE}"
