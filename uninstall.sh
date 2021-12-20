rm -rf ~/.config/vim-easycomplete/
rm -rf ~/.vim_runtime/
if [ -d "~/.vim_runtime.bak/" ]; then
  cp ~/.vim_runtime.bak ~/.vim_runtime
fi

if [ -d "~/.vimrc.bak" ]; then
  cp ~/.vimrc.bak ~/.vimrc
fi


