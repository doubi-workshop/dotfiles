#!/bin/bash
# set dotfile path and home path

echo "soft link all config files"

# personal script
if ! [ -d "${HOME}/bin" ]; then
    ln -s ${DOTFILE_PATH}/script ${HOME}/script
fi
echo "soft link personal script"

# bash
if [ -e "${HOME}/.bashrc" ]; then
    rm ${HOME}/.bashrc
fi
ln -s ${DOTFILE_PATH}/bash/bashrc ${HOME}/.bashrc
if [ -e "${HOME}/.bash_profile" ]; then
    rm ${HOME}/.bash_profile
fi
ln -s ${DOTFILE_PATH}/bash/bash_profile ${HOME}/.bash_profile
echo "soft link bash"

# vim
if [ -d "${HOME}/.vim" ]; then
    rm -rf ${HOME}/.vim
fi
if [ -e "${HOME}/.vimrc" ]; then
    rm ${HOME}/.vimrc
fi
ln -s ${DOTFILE_PATH}/vim/vimrc.vim ${HOME}/.vimrc
echo "soft link vim"

# zsh
#if [ -e "${HOME}/.zshrc" ]; then
#    rm ${HOME}/.zshrc
#fi
#if [ -d "${HOME}/.oh-my-zsh" ]; then
#    rm -rf ${HOME}/.oh-my-zsh
#fi
#ln -s ${DOTFILE_PATH}/zsh/templates/zshrc.zsh-template ${HOME}/.zshrc
#ln -s ${DOTFILE_PATH}/zsh/ ${HOME}/.oh-my-zsh 

# tmux
if [ -e "${HOME}/.tmux.conf" ]; then
    rm ${HOME}/.tmux.conf
fi
ln -s ${DOTFILE_PATH}/tmux/tmux.conf ${HOME}/.tmux.conf
echo "soft link tmux"

# install Vundle for vim
if [ ! -d "${HOME}/.vim/bundle/Vundle.vim" ]; then 
    git clone https://github.com/VundleVim/Vundle.vim.git ${HOME}/.vim/bundle/Vundle.vim
    vim +PluginInstall +qall
fi
echo "install Vundle for vim"

echo "done"
