#!/bin/sh
set -eou pipefail

# Defaults
TARGET="${GIT_TARGET:-/project/cst_repos/tutorial-notebooks}"
SRC="${GIT_SRC:-git+https://github.com/lsst/tutorial-notebooks}"
BRANCH="${GIT_BRANCH:-main}"

# If directory exists, pull the branch.
# Otherwise, shallow-clone the branch.
if [ -d ${GIT_TARGET} ]; then
    cd "${GIT_TARGET}" ;
    git checkout "${GIT_BRANCH}"
    git pull
else
    cd $(basename "${GIT_TARGET}")
    git clone --depth 1 -b "${GIT_BRANCH}" "${GIT_SRC}"
fi
