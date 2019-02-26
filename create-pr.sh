#!/bin/bash
git checkout develop
git pull
git checkout -b $GIT_PR_RELEASE_BRANCH_STAGING
git push origin $GIT_PR_RELEASE_BRANCH_STAGING
git-pr-release
