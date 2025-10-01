---
layout: post
title: "After hibernation or  after suspend resume cycle, multimedia keys or the mouse failed in Ubuntu MATE"
categories: ubuntu mate
---

## Problem: 
Some keys in the keyboard or mouse failed (stop working) after hibernation.

## Solution:
Modify the grub configuration 

### Step by step:
(remember execute just the lines beginning with $)

1. Identify the path of your swap file

  ```bash
  cat /etc/fstab
  ```

2. Identify the UUID of the filesystem containing the swap file and the offset of the swap file. Remember replace `/swap.img` with the path you get in step 1.
  ```bash
  $ findmnt -no UUID -T /swap.img
  5c00dcfe-aa4a-47e4-88ad-0cb9de4a4144
  ```

3. Find the `physical offset` of the `swap.img` file within its filesystem.

  ```bash
  $ sudo filefrag -v /swap.img | head -n 4
  Filesystem type is: ef53
  File size of /swap.img is 8589934592 (2097152 blocks of 4096 bytes)
  ext:     logical_offset:        physical_offset: length:   expected: flags:
    0:        0..       0:   29923328..  29923328:      1:            
  ```

  This commands will extract the specific (first) value for the `physical_offset`:
  ```bash
    $ sudo filefrag -v /swap.img | awk '$1=="0:" {print substr($4, 1, length($4)-2); exit}'
    29923328
  ```

4. Edit the GRUB configuration.
 
  Locate the `GRUB_CMDLINE_LINUX_DEFAULT` line and add or modify the `resume` and `resume_offset` parameters.

  a. Open the file `/etc/default/grub`
  ```bash
  sudo nano /etc/default/grub
  ```
  b. Locate the `GRUB_CMDLINE_LINUX_DEFAULT` line and add or modify the `resume` and `resume_offset` parameters. Replace <your_filesystem_UUID> with the UUID obtained in step 2 and <your_swapfile_offset> with the calculated byte offset.

  ```bash
  GRUB_CMDLINE_LINUX_DEFAULT="quiet splash resume=UUID=<your_filesystem_UUID> resume_offset=<your_swapfile_offset>"
  ```
  c. Save the file and exit nano.


5. Update GRUB and reboot your computer.

  ```bash
  sudo update-grub
  reboot
  ```



## Source: 
Google search: <https://www.google.com/search?q=after+hibernation+multimedia+keys+failed+in+ubuntu+mate&oq=after+hibernation+multimedia+keys+failed+in+ubuntu+mate&gs_lcrp=EgZjaHJvbWUyBggAEEUYOTIHCAEQIRigATIHCAIQIRigATIHCAMQIRigATIHCAQQIRigAdIBCTExNzY3ajFqN6gCALACAA&client=ubuntu-chr&sourceid=chrome&ie=UTF-8>\
<https://www.youtube.com/watch?v=coiPtCFnO-0&t=40s>\
<https://ubuntu-mate.community/t/after-suspend-resume-cycle-keyboard-mouse-are-not-working/22110>




