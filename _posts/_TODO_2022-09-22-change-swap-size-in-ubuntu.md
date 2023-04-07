
# Change swap size in Ubuntu 18.04 or 20.04

## Problem

You need to increase swap size in Ubuntu.

Swap is a special area on your computer, which the operating system can use as additional RAM.
Starting with Ubuntu 17.04, the swap partition was replaced by a swap file. The main advantage of the swap file is easy resizing.

In the following example, I'll extend the swap space available in the /swapfile to 8 GB.

Before begin, check the System for Swap Information.

```bash
sudo swapon --show
```
If you don’t get back any output, this means your system does not have swap space available currently.

You can verify that there is no active swap using the free utility:

```bash
free -h
```

```bash
              total        used        free      shared  buff/cache   available
Mem:           31Gi        11Gi       230Mi       8.1Gi        19Gi        10Gi
Swap:         8.0Gi       581Mi       7.4Gi
```

As you can see in the **Swap** row of the output, swap is active on the system with 8GB.



## Step by Step

1. Turn off all swap processes

```bash
sudo swapoff -a
```


2. Resize the swap

```bash
sudo dd if=/dev/zero of=/swapfile bs=1G count=8
```

if = input file
of = output file
bs = block size
count = multiplier of blocks

3. Change permission

```bash
sudo chmod 600 /swapfile
```

4. Make the file usable as swap

```bash
sudo mkswap /swapfile
```

5. Activate the swap file

```bash
sudo swapon /swapfile
```

6. Edit /etc/fstab and add the new swapfile if it isn’t already there

```bash
/swapfile none swap sw 0 0
```

 7. Check the amount of swap available

```bash
grep SwapTotal /proc/meminfo
```


Source:
<https://bogdancornianu.com/change-swap-size-in-ubuntu/>
<https://www.digitalocean.com/community/tutorials/how-to-add-swap-space-on-ubuntu-22-04>



