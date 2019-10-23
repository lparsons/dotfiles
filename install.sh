#!/usr/bin/env bash

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

# ssh
mkdir -p ${HOME}/.ssh
ln -sf ${BASEDIR}/.ssh/rc ${HOME}/.ssh/rc
