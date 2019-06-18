#!/usr/bin/env bash

#!/bin/bash

BASEDIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# vim
ln -sf ${BASEDIR}/.vimrc ~/.vimrc
# ln -s ${BASEDIR}/vim/ ~/.vim

# nvim
mkdir -p ${HOME}/.config/nvim
ln -sf ${BASEDIR}/.config/nvim/init.vim ${HOME}/.config/nvim/init.vim

# bash
ln -sf ${BASEDIR}/.inputrc ~/.inputrc

# git
ln -sf ${BASEDIR}/.gitconfig ~/.gitconfig

# hg
ln -sf ${BASEDIR}/.hgrc ~/.hgrc

# git
ln -sf ${BASEDIR}/.tmux.conf ~/.tmux.conf
ln -sf ${BASEDIR}/.tmux-osx.conf ~/.tmux-osx.conf


# Setup Vundle
mkdir -p "${HOME}/.vim"
vundle_dir="${HOME}/.vim/bundle/Vundle.vim"
if [ ! -d "${vundle_dir}" ]; then
    git clone https://github.com/VundleVim/Vundle.vim.git "${vundle_dir}"
fi
vim +PluginUpdate +qall

# Setup shell prompt
SHELL_PROMPT_SCRIPT="${HOME}/.shell_prompt.sh"
mv "${SHELL_PROMPT_SCRIPT}" "${SHELL_PROMPT_SCRIPT}.old"
vim "+PromptlineSnapshot ${SHELL_PROMPT_SCRIPT} airline" +qall
