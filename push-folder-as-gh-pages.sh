#!/usr/bin/env bash
set -e # Exit on error

# Script used by Travis CI after the build to update the gh-pages branch,
# if the build was successful.

# Check that exactly one argument has been provided
if [[ $# -ne 1 ]]; then
  echo "Usage: ./${0##*/} <folder-to-push>"
  exit 1
fi

# The first argument is the directory we want to deploy as our 'pages' branch.
DIR_TO_DEPLOY=$1

if [ "$TRAVIS_PULL_REQUEST" != "false" ]; then
  echo "This build is for a pull request; skipping deploy."
  exit 0
fi

# Enable check once this is working
if [ "$TRAVIS_BRANCH" != "master" ]; then
  echo "This build is not for the master branch; skipping deploy."
  exit 0
fi

#
# Past our abort checks - we actually want to update gh-pages with our release.
#

# Decrypt and add the deploy key
openssl aes-256-cbc -K $encrypted_fd3107fea897_key -iv $encrypted_fd3107fea897_iv -in deploy_Hitotoki_id_rsa.enc -out /tmp/deploy_key -d
chmod 600 /tmp/deploy_key
eval `ssh-agent -s`
ssh-add /tmp/deploy_key

HTTPS_REPO=`git config remote.origin.url`
SSH_REPO=${HTTPS_REPO/https:\/\/github.com\//git@github.com:}
SHA=`git rev-parse --verify HEAD`

# Assume a github pages branch exists.
# Would be nice to automate its creation in the future.

# Clone the gh-pages branch to /tmp/pages
git clone --branch gh-pages --single-branch --depth 1 -- $HTTPS_REPO /tmp/pages

# Delete the old release
rm -rf /tmp/pages/*

# Copy in the new release
cp --archive $DIR_TO_DEPLOY/* /tmp/pages

# Jump to the temp directory to commit and push
cd /tmp/pages

# Quit if nothing has changed in this branch
CHANGED_FILES=`git status --porcelain`
if [ -z "$CHANGED_FILES" ]; then
  echo "No changes to push; skipping deploy."
  exit 0
fi

# Commit the changes to the gh-pages branch
git config user.name "Travis CI"
git config user.email "bradley.c.buchanan@gmail.com"
git add --all
git commit -m "Update GitHub Pages: $SHA"

# Push our updated gh-pages branch
git push $SSH_REPO gh-pages

