#!/usr/bin/env bash

# Setup Vundle
mkdir -p "${HOME}/.vim"
vundle_dir="${HOME}/.vim/bundle/Vundle.vim"
if [ ! -d "${vundle_dir}" ]; then
    git clone https://github.com/VundleVim/Vundle.vim.git "${vundle_dir}"
fi
vim +PluginUpdate +qall
