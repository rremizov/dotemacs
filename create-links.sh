#!/bin/bash

# Run it from repo directory.

mv ~/.emacs.d ~/.emacs.d.old
mv ~/.emacs   ~/.emacs.old

ln -s `pwd` ~/.emacs.d
