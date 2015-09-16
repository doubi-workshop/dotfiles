#!/bin/bash
cd ~
export BAIDUYUN_ROOT=/media/windows/BaiduYun/BaiduYun
# vim
rm ~/.vimrc
rm ~/.vim
ln -s $BAIDUYUN_ROOT/dotfiles/vim/vimrc.vim ~/.vimrc
ln -s $BAIDUYUN_ROOT/dotfiles/vim/vimfiles ~/.vim
# zsh
rm ~/.zshrc
rm ~/.oh-my-zsh
ln -s $BAIDUYUN_ROOT/dotfiles/zsh/templates/zshrc.zsh-template ~/.zshrc
ln -s $BAIDUYUN_ROOT/dotfiles/zsh/ ~/.oh-my-zsh 
# tmux
rm ~/.tmux.conf
ln -s $BAIDUYUN_ROOT/dotfiels/tmux/tmux.conf ~/.tmux.conf
