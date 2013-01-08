#!/usr/bin/env bash

echo "initializing submodules"
git submodule init
git submodule update

echo "Deleting the old files"
rm ~/.vimrc
rm ~/.vim
rm ~/.gvimrc
rm ~/.gitconfig
rm ~/.gitignore
rm ~/.tmux.conf
rm ~/.bash_it

echo "Symlinking files"
ln -s ~/Github/dotfiles/vimrc ~/.vimrc
ln -s ~/Github/dotfiles/vim ~/.vim
ln -s ~/Github/dotfiles/gvimrc ~/.gvimrc
ln -s ~/Github/dotfiles/gitconfig ~/.gitconfig
ln -s ~/Github/dotfiles/gitignore ~/.gitignore
ln -s ~/Github/dotfiles/tmux ~/.tmux.conf
ln -s ~/Github/dotfiles/bash-it ~/.bash_it

echo "Updating submodules"
git submodule foreach git pull origin master #--recurse-submodules

echo "All done."

