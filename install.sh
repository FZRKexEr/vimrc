#!/bin/sh
set -e

cd ~/.vim_runtime

echo '
set runtimepath+=~/.vim_runtime
source ~/.vim_runtime/init.vim
' > ~/.vimrc

echo "Installed Vim configuration successfully!" 

