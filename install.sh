#!/usr/bin/env bash

BASEDIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

#get_release.sh
ln -sf "${BASEDIR}/.get_release.sh" "${HOME}/.get_release.sh"

# vim
ln -sf "${BASEDIR}/.vimrc" "${HOME}/.vimrc"
# ln -s ${BASEDIR}/vim/ ~/.vim

# nvim
mkdir -p "${HOME}/.config/nvim"
ln -sf "${BASEDIR}/.config/nvim/init.vim" "${HOME}/.config/nvim/init.vim"

# bash
ln -sf "${BASEDIR}/.inputrc" "${HOME}/.inputrc"

# dircolors
ln -sf "${BASEDIR}/.dircolors" "${HOME}/.dircolors"

# git
ln -sf "${BASEDIR}/.gitconfig" "${HOME}/.gitconfig"

# hg
ln -sf "${BASEDIR}/.hgrc" "${HOME}/.hgrc"

# git
ln -sf "${BASEDIR}/.tmux.conf" "${HOME}/.tmux.conf"
ln -sf "${BASEDIR}/.tmux-osx.conf" "${HOME}/.tmux-osx.conf"

# ssh
mkdir -p "${HOME}/.ssh"
ln -sf "${BASEDIR}/.ssh/rc" "${HOME}/.ssh/rc"

# UCSC Kent Tools
cp --remove-destination "${BASEDIR}/.hg.conf" "${HOME}/.hg.conf"
chmod 600 "${HOME}/.hg.conf"

# promptline
source "${BASEDIR}/.promptline_monokai.sh"
