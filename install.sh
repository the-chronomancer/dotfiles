#! /usr/bin/env bash

printf "Moving dotfiles to the home directory..\n"

for file in .{aliases,functions}; do
    cp "$file" ~/"$file";
    printf "Moving "$file"..\n"
done;
unset file;

printf "Done!\n"

printf "Installing packages from packages.txt..\n"
sudo pacman -S - < packages.txt
