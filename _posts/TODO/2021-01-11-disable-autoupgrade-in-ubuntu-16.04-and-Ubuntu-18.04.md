## Problem:
I am using my Ubuntu and the cpu is overhead with "upgrade" proccess but I have't done any upgrade.

This is because since ubuntu 16.04 has enable the auto-upgrade. You need to disable it!

## Solution:

### Solution 1. Using the terminal to edit manually.
1.1 To properly disable the automatic updates, we need change the configuation on ```/etc/apt/apt.conf.d/20auto-upgrades``` from:

```bash
APT::Periodic::Unattended-Upgrade "1";
```
to 
```bash
APT::Periodic::Unattended-Upgrade "0"; 
```
Open the file in nano editor:
```bash 
nano /etc/apt/apt.conf.d/20auto-upgrades
```
change the line and save changes. That's all.


### Solution 2. Using the terminal to edit automatically.

1. Open a Terminal and type:
```bash
sudo dpkg-reconfigure unattended-upgrades
```
2. Choose ´´´No´´´ and hit ´´´ENTER´´´ to disable unattended upgrades.
![screenshot terminal to disable unattended-upgrades](https://raw.githubusercontent.com/rogelioprieto/linux-tips/master/_posts/TODO/screenshot-at-2021-01-11%2011-33-51.png)



## Sources:
<https://askubuntu.com/questions/798989/heavy-load-by-apt-unattended-upgrade>\
<https://ostechnix.com/how-to-disable-unattended-upgrades-on-ubuntu/>
