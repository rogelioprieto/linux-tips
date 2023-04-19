---
layout: post
title: Optimize performance SSD or HDD in Ubuntu MATE
categories: linux
---

## Problem: 
Your computer is using Ubuntu or Ubuntu MATE and you would like improve the computer performance.

# Solution
You can modify some values in the default setup for using swap memory 

## Steps:

1. Show the current values
```bash
$ cat /proc/sys/vm/swappiness
60
$ cat /proc/sys/vm/vfs_cache_pressure
100
$ cat /proc/sys/vm/watermark_scale_factor
10
$ cat /proc/sys/vm/dirty_ratio
20
```

2. Set the new values. Open `nano`.
```bash
$ sudo nano /etc/sysctl.conf

```

3. Add these lines at the final in the file. After that save the file.
```bash
vm.swappiness = 10
vm.vfs_cache_pressure = 50
vm.dirty_ratio = 3
vm.dirty_background_ratio = 5
vm.watermark_scale_factor = 200
```


## (_optional reading_) Explanation:

**Swappiness**. A lower value of swappiness (10) our operating system will make a much lower use of swap memory. As the swap memory usage will be lower, the fluidity in the execution and use of the programs will be better.

**vfs_cache_pressure**. The recommended intermediate value for vfs_cache_pressure is 50. Decreasing vfs_cache_pressure makes the kernel prefer to keep directories and inodes in a RAM-hosted cache. Increasing vfs_cache_pressure beyond 100 causes the kernel to retrieve directories and inodes more frequently, i.e. passing them from RAM to disk.

So a high value will generate more disk I/O traffic and a value less than 100, a decrease in disk I/O traffic. Assigning a low value allows operations to be performed in RAM, thus gaining speed, as well as decreasing the amount of disk operations, increasing its lifetime.


The default value of **vm.dirty_ratio** is 40. In our case we have reduced it to 3. This reduction allows that the data present in the memory that have been modified, and therefore are different from those stored on the hard disk, are written to the disk with a higher frequency, but in each transfer the amount paged will be much lower.

In this way, in the case that the writing speed of our hard disk is slow, and/or in the case that the CPU is not very powerful, we will notice an improvement of performance in our equipment.



The **vm.watermark_scale_factor** variable determines the moment in which the Kswapd daemon is activated, that is, the one that initiates the data transfer from RAM to SWAP. It also determines the amount of data in memory that will be paged to disk. By changing the value from 10 to 200 we get that when there is 2% of RAM free, Kswapd is started to page data from RAM to hard disk.



## Sources:
<https://espaciotecnologico.co/optimizar-acelerar-tu-maquina-linux/>  
<https://averagelinuxuser.com/after-installing-mate/#21-optimize-the-system-optional>
