#!/bin/bash
############################
# .make.sh
# This script creates symlinks from the home directory to any desired dotfiles in ~/dotfiles
############################

# Init and Update all git submodules
git submodule update --init --recursive

########## Variables

olddir=$HOME/old.dotfiles             # old dotfiles backup directory
files="bashrc cshrc bash_profile vimrc inputrc pythonrc vim gitconfig gitignore screen screenrc"    # list of files/folders to symlink in homedir

##########

# create dotfiles_old in homedir
echo "Creating $olddir for backup of any existing dotfiles in ~"
rm -rf $olddir
mkdir -p $olddir
echo "...done"

for file in $files; do
    echo "Moving any existing dotfiles from ~ to $olddir"
    cp -r $HOME/.$file $olddir
    # Copy the existing dotfile
    cp -r .$file $HOME/
done
