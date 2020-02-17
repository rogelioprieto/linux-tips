# Exfat partition. How to read a hard disk or usb with exfat format in Ubuntu


## Problem: 

You need to use a hard disk or usb in Ubuntu but appears this error:  _"Error mounting /dev/sdb1 at /media/user/USB: unknown file system ‘exfat’_

## Solution:

Enable the ```Universe``` repository and install some exfat packages.

### Step by step:
In a Terminal (```Ctrl+Alt+T```), try these commands:

```bash
$ sudo apt update 
$ sudo apt install exfat-fuse exfat-utils

```
## Source:

 <https://linuxize.com/post/how-to-mount-an-exfat-drive-on-ubuntu/>