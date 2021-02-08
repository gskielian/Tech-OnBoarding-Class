#!/bin/bash

mkdir -p ~/.vim/templates/

echo "create file in ~/.vim/templates/"
echo "see the 'sh.skeleton' for a sample template"
echo "then add this to your init.vim or vim.rc file"
echo "autocmd BufNewFile * silent! 0r $HOME/.vim/templates/%:e.skeleton"


