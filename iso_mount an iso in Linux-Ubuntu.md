# Mount an ISO image in Ubuntu

## Problem:
You have an ISO file and you want to see (or copy) their contents.

## Solution:
You can use the ```Archive Manager``` application or directly using the ```Command Line```.

### Using the ```Command Line```:

The user can mount the ISO image via a terminal and then inspect the contents via commands or opening a file browser. To mount the ISO via the terminal:

1. Boot into your normal Linux operating system.
1. Create a specific mount point, if desired. An existing mount point may also be used.
1. Mount the ISO
  + Example: sudo mount -o loop /home/username/Downloads/ubuntu-desktop-amd64.iso /mnt/iso/ 
1. Open a file browser to view the contents

```bash
sudo mkdir /mnt/iso 
sudo mount -o loop /media/rogelio/timemachine/BORRAR/lxle-18043-64.iso /mnt/iso/
umount /mnt/iso 
sudo umount /mnt/iso
```
