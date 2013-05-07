#!/usr/bin/env bash

printf "Do you want to backup your old file? (y|n) " 

read result 

if test $result = y ; then
    echo "Install exit!"
    exit
fi

git pull origin master
git submodule init
git submodule update	# get from github all
git submodule foreach git submodule init
git submodule foreach git submodule update
git submodule foreach git pull

git submodule foreach '[ "$path" = "bundle/vim-powerline" ] && branch=develop \
  || branch=master; git checkout $branch'

rm -f $HOME/.vimrc $HOME/.gvimrc
ln -s $HOME/.vim/vimrc $HOME/.vimrc
