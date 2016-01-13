#!/bin/bash -eu

cd ~/git
[ "${1:-}" ] && git checkout $1
git clean -dfx
set +eu
make
git-tutorial-commit
