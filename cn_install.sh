#!/bin/sh
set -e

pos=$(pwd)

git clone --depth=1 https://github.com.cnpmjs.org/fzrkexer/vimrc ~/.vim_runtime

cd ~/.vim_runtime/plugged

echo '
set runtimepath+=~/.vim_runtime
source ~/.vim_runtime/init.vim
' > ~/.vimrc

git clone --depth=1 https://github.com.cnpmjs.org/rakr/vim-one 
git clone --depth=1 https://github.com.cnpmjs.org/Yggdroot/indentLine 
git clone --depth=1 https://github.com.cnpmjs.org/dense-analysis/ale 
git clone --depth=1 https://github.com.cnpmjs.org/arcticicestudio/nord-vim 

cd ~/.vim_runtime/

cd $pos
echo "Installation succeeded! ヾ(≧∇≦*)ゝ"


