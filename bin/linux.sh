#!/bin/bash

#^^This tells the shell how to run the script.
#PN: When making branching statements, make sure that the fi is at the end of your LAST branching statement's curly brace.
os=$(uname)
FILE=~/.vimrc
if [[ $os == "Linux" ]];
then
        echo "Invalid Input" >> linuxsetup.log
else
        echo "Invalid Input"
	exit
fi
#The if statement above ensures that the operating system is linux based.

mkdir -p ~/.TRASH #<-- This creates a hidden directory if it is not available in home directory.
test -f "$FILE"
echo "" >> $FILE
mv $FILE ~/.bup_vimrc
echo "current .vimrc file was changed to '.bup_vimrc" >> linuxsetup.log
cat ~/.dotfiles/etc/vimrc > ~/.vimrc
echo "source ~/.dotfiles/etc/bashrc_custom" >> ~/.bashrc
#^This code above checks if the OS is linux, creates a hidden trash directory if its doesn't exist, checks if the .vimrc file exists, renames
#the file and redirects the file contents of the vimrc file in the .dotfiles directory to the main .vimrc file in the home directory. Lastly, the text on line 21, is appended to the ~/.bashrc file.
