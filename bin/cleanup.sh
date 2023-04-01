#!/bin/bash
rm ~/.vimrc 
sed 's/source ∼/.dotfiles/bashrc custom/""/g~/.bashrc'
rm -r ~/.TRASH
#This code removes the current hidden vimrc file from the home directory, empties
#the bashrc file using sed, and then finally recursively removes the .trash directory
#and the contents of the directory.

