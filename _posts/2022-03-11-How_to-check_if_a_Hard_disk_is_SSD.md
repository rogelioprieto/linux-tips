---
layout: post
title: "How to check if a Hard disk is SSD"
categories: ubuntu
---

## Problem: 

I need to know if my computer has a hard disk or a SSD installed. 

## Solution:
To know, you can use the Terminal and type some commands.




### Step by step:

1. Where is my root?
```
df / -h
```

You can see the column `Mounted on`, and find `/`

You can get more info using this:

```
sudo lshw -short -C disk 
```

2.  
```
sudo smartctl -a /dev/sda | grep 'Rotation Rate'
```
if you get a value (ex. 7200 rpm) for Rotation rate variable, then you have installed a hard disk.
else, you have an SSD.

NOTE: the `smartmontools` may need to be installed in order to use smartctl command. You can use: `sudo apt-get install smartmontools`

3. Another option is:

```
$ lsblk -o NAME,ROTA  
```

In the result, 1 is for hard disk. 0 is for SSD.







## Source:

<https://askubuntu.com/questions/792814/how-to-check-if-my-ubuntu-is-placed-on-ssd>
