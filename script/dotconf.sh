#!/bin/zsh

DOTFILE_PATH=/media/windows/Dropbox/dotfiles
rm ~/.vim
rm ~/.vimrc
rm ~/.tmux.conf
rm ~/.oh-my-zsh
rm ~/.zshrc
# Symbolic Link {{{
    ln -s $DOTFILE_PATH/vim/vimfiles ~/.vim
    ln -s $DOTFILE_PATH/vim/vimrc.vim ~/.vimrc
    ln -s $DOTFILE_PATH/tmux/tmux.conf ~/.tmux.conf
    ln -s $DOTFILE_PATH/zsh/ ~/.oh-my-zsh
    ln -s .oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc
# }}}

