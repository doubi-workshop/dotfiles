#!/bin/bash

# set dotfile path and home path
HOME_PATH=/home/zhangkang-pd
if [ $(hostname) == "xjydev1.corp.qihoo.net" ]; then
    DOTFILE_PATH=/da3/search/zhangkang-pd/dotfiles
elif [ $(hostname) == "zhangkang-pd-D4" ]; then
    DOTFILE_PATH=/cygdrive/e/Cloud/dotfiles
fi

# soft link all config files

# bin
if ! [ -d "$HOME/bin" ]; then
    ln -s $DOTFILE_PATH/script $HOME_PATH/bin
fi

# bash
if [ -e "$HOME_PATH/.bashrc" ]; then
    rm $HOME_PATH/.bashrc
fi
ln -s $DOTFILE_PATH/bash/bashrc $HOME_PATH/.bashrc
if [ -e "$HOME_PATH/.bash_profile" ]; then
    rm $HOME_PATH/.bash_profile
fi
ln -s $DOTFILE_PATH/bash/bash_profile $HOME_PATH/.bash_profile

# vim
if [ -d "$HOME_PATH/.vim" ]; then
    rm -rf $HOME_PATH/.vim
fi
if [ -e "$HOME_PATH/.vimrc" ]; then
    rm $HOME_PATH/.vimrc
fi
ln -s $DOTFILE_PATH/vim/vimrc.vim $HOME_PATH/.vimrc
ln -s $DOTFILE_PATH/vim/vimfiles $HOME_PATH/.vim

# zsh
if [ -e "$HOME_PATH/.zshrc" ]; then
    rm $HOME_PATH/.zshrc
fi
if [ -d "$HOME_PATH/.oh-my-zsh" ]; then
    rm -rf $HOME_PATH/.oh-my-zsh
fi
ln -s $DOTFILE_PATH/zsh/templates/zshrc.zsh-template $HOME_PATH/.zshrc
ln -s $DOTFILE_PATH/zsh/ $HOME_PATH/.oh-my-zsh 

# tmux
if [ -e "$HOME_PATH/.tmux.conf" ]; then
    rm $HOME_PATH/.tmux.conf
fi
ln -s $DOTFILE_PATH/tmux/tmux.conf $HOME_PATH/.tmux.conf
