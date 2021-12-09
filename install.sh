#!/bin/sh
set -e

pos=$(pwd)

git clone --depth=1 https://github.com/fzrkexer/vimrc ~/.vim_runtime

cd ~/.vim_runtime/plugged

echo '
set runtimepath+=~/.vim_runtime
source ~/.vim_runtime/init.vim
' > ~/.vimrc

git clone --depth=1 https://github.com/rakr/vim-one 
git clone --depth=1 https://github.com/Yggdroot/indentLine 
git clone --depth=1 https://github.com/dense-analysis/ale 
git clone --depth=1 https://github.com/arcticicestudio/nord-vim 
git clone --depth=1 https://github.com/ajmwagar/vim-deus
git clone --depth=1 https://github.com/drewtempelmeyer/palenight.vim
git clone --depth=1 https://github.com/sainnhe/everforest
git clone --depth=1 https://github.com/sainnhe/gruvbox-material
git clone --depth=1 https://github.com/sainnhe/edge
git clone --depth=1 https://github.com/sainnhe/sonokai
git clone --depth=1 https://github.com/skywind3000/vim-quickui



cd ~/.vim_runtime/

cd $pos
echo "Installation succeeded! ヾ(≧∇≦*)ゝ"


