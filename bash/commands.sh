#!/bin/bash

# ~/etc/bash/commands.sh
# ~/.commands
# Dean's list of frequently used commands

### Power Management ###        
reboot
poweroff

### i3 Management ###
i3-msg exit
i3-msg suspend
i3-msg hibernate

### REMAP ###
xmodmap -e 'keycode 166 = Home'
xmodmap -e 'keycode 167 = End'
xmodmap -e 'keycode 110 = XF86Back'
xmodmap -e 'keycode 115 = XF86Forward'

### Find Keycodes ###
xev

### PDF Extraction ###
pdftk [sample.pdf] cat [page_numbers] output [output_file.pdf]
pdftk mypdf.pdf cat 1-3 output myshorterpdf.pdf

### PDF Combine ###
pdftk in1.pdf in2.pdf cat output out1.pdf

### Environment Variables ###
echo $EDITOR
export EDITOR="/usr/bin/nvim"

### Reload BASH ### 
source ~/.bashrc

### Mounting and Unmount without SUDO ###
udisksctl mount -b /dev/sda1    ## -b allows use of device block name (/dev/sda1)
udisksctl unmount -b /dev/sda1

### Mounting ###
sudo mount /dev/sdb1 /mnt
sudo umount /mnt
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
    # navigate to the directory where you want the link
    # run the command below
ln -s target_directory link_name

ln -s ~/etc/bash_aliases .bash_aliases  # -s symbolic
ln -t ~/.config/i3 -s ~/usr/i3/config   # -t target directory

### Git ###
git clone git@github.com:DeanGadberry/.com.git ~/dev/deangadberry.com
git clone -b legacy git@github.com/deangadberry/deangadberry.github.io.git # clone specific branch
git rm -r somestupidstuff # delete from repository
git branch -m master main # rename branch "master" to "main" (change branch)
git push -u origin main # push everything upstream to main
git checkout development # change to the development branch 
    # must commit changes before checking out (or stash)
git branch mobileScalingIssue16 # create new branch
git checkout mobileScalingIssue16 # Switch to new branch
git checkout HEAD <filename> # recover deleted file
git remote set-url origin git@github.com:<Username>/<Project>.git

### Installing Software / Extract tar.gz ###
sudo tar -xvzf discord-0.0.21.tar.gz -C /opt
sudo ln -sf /opt/Discord/Discord /usr/bin/Discord

### Install .deb files ###
sudo apt install ./theupdatedsoftware.deb

### Aliases ###
alias gitacp="git add * && git commit -m 'update' && git push"

### Bash Operators / Separators ###
|   # pipes cmd1 stdout -> cmd2 stdin
|&  # pipes cmd1 stdout & stderr -> cmd2 stdin (bash 4+)o
&&  # cmd2 executes after cmd1 SUCCESS
||  # cmd2 executes after cmd1 FAILS
;   # cmd2 executes ALWAYS (unless 'set -e' invoked)

### Raspberry Pi ###
sudo rpi-imager 	# the program for burning OS to sd card.

### Networking ###
nmcli 

### Zip / Unzip Files ###
zip -r output.zip input
unzip output.zip

### Convert Mp4 to GIF ###
ffmpeg -i input.mp4 output.gif

### On Screen Key Display ###
screenkey

### Uninstall with apt-get ###
sudo apt-get purge npm

### Jekyll Basically ### https://jekyllrb.com/docs/
mkdir myblog
jekyll new myblog
cd myblog
bundle exec jekyll serve --livereload

### Partition and Format a USB ###
lsblk   # identify disk to partition
gdisk /dev/sdX  # launch gdisk 
> d     # wipe partitions one by one 
            #you can skip this if you want to delete all of the partitions
> o     # deletes all partitions and creates a new protective MBR
> n     # creates a new partition 
            # leave the default for the partition number and first sector
            # last sector denotes the full size 
                # leave default to use entire space
> p     # print the partition table
> w     # write the changes

### Format Filesystem ###
sudo mkfs -t vfat /dev/sdX  # formats fat32

### Disk Usage ###
df -h # '-h' makes it human readable

### Identify Filesystem ###
df -T   # '-T' prints the file system type of mounted filesystems
lsblk -f    # same for all devices

### Labeling fat32 devices ###
sudo mlabel -i /dev/sdX ::<label_name>

### Downloading music fron Youtube with youtube-dl ###
youtube-dl -f bestaudio -x --audio-format mp3 <URL>

### Listen to music on this computer? ###
cmus

### Rip Extract Download Copy files from a CD DVD ###
k3b

### Edit Metadata on Audio Files ###
id3v2 -l file.mp3
man id3v2
