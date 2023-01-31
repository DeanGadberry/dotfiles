#! /bin/bash
# For ease of troubleshooting headless raspberry pi zero

lsblk
echo "Mounting /dev/sdb1 to tmp/mnt/usb1" &&
sudo mount /dev/sdb1 ~/tmp/mnt/usb1 &&
	echo "mounted" || echo "error"
echo "copying wpa_supplicant.conf from tmp to usb1" &&
sudo cp ~/tmp/wpa_supplicant.conf ~/tmp/mnt/usb1/wpa_supplicant.conf &&
	echo "copied" || echo "error"
bat ~/tmp/mnt/usb1/wpa_supplicant.conf
echo "touching ssh" &&
sudo touch ~/tmp/mnt/usb1/ssh &&
	echo "touched" || echo "error"
echo "unmounting /dev/sdb1" &&
sudo umount /dev/sdb1 &&
	echo "unmounted" || echo "error"
lsblk
