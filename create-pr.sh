#!/bin/bash
git checkout master
git pull
git checkout -b $GIT_PR_RELEASE_BRANCH_STAGING
git-pr-release
