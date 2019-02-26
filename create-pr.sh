#!/bin/bash
git checkout -b $GIT_PR_RELEASE_BRANCH_STAGING
git-pr-release
