#!/bin/bash
git fetch --prune
git checkout develop
git checkout -b $GIT_PR_RELEASE_BRANCH_STAGING
git push origin $GIT_PR_RELEASE_BRANCH_STAGING
git-pr-release
