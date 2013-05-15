#!/bin/bash
####################
# .make.sh
# Create symlinks from home dir to dotfiles
####################

########## Variables

dir=~/dotfiles
olddir=~/dotfiles_old
files="vimrc vim"

##########

# create dotfiles_old
echo "Creating $olddir for backup of existing dotfiles"
mkdir -p $olddir
echo "...done"

echo "Changing to $dir directory"
cd $dir
echo "...done"

# move existing dotfiles to backup directory, create symlinks
for file in $files; do
	echo "Moving existing dotfiles to $olddir"
	mv ~/.$file ~/$olddir/
	echo "Creating symlink to $file in home dir"
	ln -s $dir/$file ~/.$file
done

