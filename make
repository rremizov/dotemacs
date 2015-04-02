#!/bin/bash

pushd ./bundle/helm/
make
popd

pushd ./bundle/magit/
EFLAGS="-L ~/.emacs.d/bundle/git-modes" make
popd

pushd ./bundle/tern/
npm install
popd

