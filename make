#!/bin/bash

set -e

pushd ./bundle/evil/
make
popd

pushd ./bundle/helm/
make
popd

pushd ./bundle/magit/
EFLAGS="-L ~/.emacs.d/bundle/git-modes" make
popd

pushd ./bundle/tern/
npm install
popd

