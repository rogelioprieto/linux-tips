---
layout: post
title: "How to shrink vdi virtual disk in VirtualBox to reduce filesize"
categories: virtualbox
---

## Problem:

I use `VirtualBox` and I want to share my Virtual Machine (MV), the export file (`.ova`) is too big.\
When I try to share in Google Drive (or any other cloud service), it takes many time to upload.

## Solution:
You shouldn't share the `.ova` file, you can share the virtual hard disk (`.vdi`) and then create a new MV with the same content.

### Step by step:

1. Start you guest virtual machine con `root`.

Reboot to GRUB menu (Press `Esc` as Ubuntu is booting up).

```
Advanced options for Ubuntu > Recovery Mode (choose highest version number)
```
From the `Recovery Menu` select `Drop to root shell prompt` (_root - Consola de superusuario_)

`df` to get your partitions (to see the partition you want to shrink e.g. sda1, sda4 etc. usually its `/dev/sda1`)
```bash
df
```
IMPORTANT! In next step, REVIEW and set the partition you want to shrink.

2. In Terminal, execute:
```bash
systemctl stop systemd-journald.socket && systemctl stop systemd-journald.service && sudo swapoff -a && mount -n -o remount,ro -t ext2 /dev/sda1 / && zerofree /dev/sda1
```

3. shutdown your guest in `VirtualBox`.
```
halt
```
after that clic in Machine -> Power off

4. Finally, compact the `.vdi` to get space. In your host (in Linux) open a `Terminal` and type:
```
VBoxManage modifymedium --compact '/path/to/thedisk.vdi'
```

IMPORTANT! remember specify the absolute path to `.vdi` file.


If your host is Windows OS:
```
VBoxManage.exe modifymedium disk "C:\path\to\disk.vdi" --compact
```


If your host is MacOS (example, Ubuntu OS):
```
VBoxManage modifyhd /path/to/thedisk.vdi --compact
```



## Source:
<https://askubuntu.com/questions/1092812/zerofree-on-ubuntu-18-04>\¸
<http://manpages.ubuntu.com/manpages/focal/en/man1/systemctl.1.html>\
<https://www.howtogeek.com/312883/how-to-shrink-a-virtualbox-virtual-machine-and-free-up-disk-space/>\
<https://gist.github.com/bitstarr/01e4946d9ab4ca368953300415cb934a>\
<https://blog.lazy-evaluation.net/posts/reclaiming-vm-space-virtualbox.html>

========


## (bonus!) brief explanation:

First, stop all processes writing to the disk so you don't get `mount /: mount busy` error
```
systemctl stop systemd-journald.socket
systemctl stop systemd-journald.service
```

Check if any swap partitions are enabled:
```
swapon -s
```

If enabled, then disable them:
```
sudo swapoff -a
```

Then finally you should be able to mount dev/sda1 as read-only. (Your filesystem type might be different from ext2. To find the filesystem, run df -T)
```
mount -n -o remount,ro -t ext2 /dev/sda1 /
```

Then finally run zerofree
```
zerofree -v /dev/sda1
```
Whens zerofree is done, shutdown Ubuntu
```
halt
```


