#!/bin/bash
git fetch --prune
git checkout develop
git checkout -b $GIT_PR_RELEASE_BRANCH_STAGING
git push origin $GIT_PR_RELEASE_BRANCH_STAGING
git config pr-release.branch.staging "staging"
git config pr-release.branch.production "master"
cat <<EOF> tmpl.erb
Release <%= Time.now %>
To release:

EOF
git config pr-release.template tmpl.erb
git-pr-release
