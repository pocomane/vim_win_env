#!/bin/bash

BASEDIR="$PWD"

cd "$PWD"/bundle/vimproc.vim
make clean
rm -f autoload/*.so
rm -f autoload/*.dll
make
