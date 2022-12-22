#!/bin/bash

# ~/usr/commands.sh
# Dean's list of frequently used bash commands

### REMAP ###
xmodmap -e 'keycode 166 = Home'
xmodmap -e 'keycode 167 = End'
xmodmap -e 'keycode 110 = XF86Back'
xmodmap -e 'keycode 115 = XF86Forward'

### PDF Extraction ###
pdftk [sample.pdf] cat [page_numbers] output [output_file.pdf]
pdftk mypdf.pdf cat 1-3 output myshorterpdf.pdf

### Environment Variables ###
echo $EDITOR
export EDITOR="/usr/bin/nvim"

### Reload BASH ### 
source ~/.bashrc

### Mounting ###
mount /dev/sdb1 /mnt
# unmount
umount /mnt
# when unmounting, must have no processes running
# see active processes with 
sudo lsof /mnt

### Permissions ###
ls -l     # view permissions of files in a directory (-l = long)
chmod 777 file.cpp    
    # r = 4
    # w = 2
    # e = 1
chown root file.cpp

### Checksum ###
sha256sum file.iso
sha256sum -c sum.sha256

### (Sym)Links ###
ln -s ~/usr/file symlink
ln -t ~/.config/i3 -s ~/usr/i3/config

### Git ###
git clone git@github.com:DeanGadberry/.com.git ~/dev/deangadberry.com
git clone -b legacy git@github.com/deangadberry/deangadberry.github.io.git # clone specific branch
git rm -r somestupidstuff # delete from repository
git branch -m master main # rename branch "master" to "main" (change branch)
git push -u origin main # push everything upstream to main
git checkout development # change to the development branch 
git branch mobileScalingIssue16 # create new branch
git checkout mobileScalingIssue16 # Switch to new branch
    alias gitacp="git add * && git commit -m 'update' && git push"
git checkout HEAD <filename> # recover deleted file

### Installing Software ###
sudo tar -xvzf discord-0.0.21.tar.gz -C /opt
sudo ln -sf /opt/Discord/Discord /usr/bin/Discord

### disk usage ###
df -h # '-h' makes it human readable

### Aliases ###
alias gitacp="git add * && git commit -m 'update' && git push"

### Bash Operators / Separators ###
|   # pipes cmd1 stdout -> cmd2 stdin
|&  # pipes cmd1 stdout & stderr -> cmd2 stdin (bash 4+)
&&  # cmd2 executes after cmd1 SUCCESS
||  # cmd2 executes after cmd1 FAILS
;   # cmd2 executes ALWAYS (unless 'set -e' invoked)

