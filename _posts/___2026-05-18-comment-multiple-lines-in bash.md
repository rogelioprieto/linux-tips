---
layout: post
title: "write here the title!!!!"
categories: github virtualbox
---

TODO: How to use the toggle trick.

The **"Toggle" Trick** is a clever use of the Bash **null utility**, represented by a colon (`:`). It allows you to effectively disable a block of code while keeping it perfectly readable and easy to "flip" back on later.

In Bash, the `:` command is a built-in that does absolutely nothing and always returns a "success" exit code (0).


## Problem: 

When you connect an exFAT drive is mounted as read-only in Windows 7; so you can't write in this drive.

## Solution:
To solve it, you can make use of Windows `Diskpart` and check the disk using `chkdsk` command.

### Step by step:

1. Open CMD prompt, type `windows+r`, then `cmd`.  
2. Type in the command as the following:  
(Note: `N` refers the volume number of the read-only disk)

```bash
diskpart
list volume

select volume N 
att vol clear readonly
```

3. Check your disk/drive using chkdsk.
 
Besides, you can run `chkdsk X: /F` in cmd.exe or run the GUI based scan by right-clicking on the exFAT partitioned drive and selecting `Properties-> Tools` and running the `Scan` disk tool. The exFAT partition needs the scan to be done to reset it back to read/write capable.



## Sources:

<https://www.diskpart.com/articles/exfat-windows-7-read-only-4125.html>  
<http://roblomtech.blogspot.com/2010/08/how-to-fix-exfat-drive-being-write.html>
