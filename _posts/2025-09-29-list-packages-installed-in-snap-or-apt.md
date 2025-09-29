---
layout: post
title: "List packages installed in snap or apt repositories"
categories: github virtualbox
---

## Problem: 

How to know if a app is installed in my computer, using Ubuntu.
## Solution:
To solve it, you should get installed app list from both package managers: snap and apt.
### Step by step:
- Using snap:
``` bash
snap list
```
- Using apt:
```bash
apt list --installed
```
- For older versions of Ubuntu 14.04:
```bash
dpkg --get-selections | grep -v deinstall
```
And list packages for a specific package; this example is for the postgres package:
```bash
dpkg --get-selections | grep postgres
```

## Source:
<https://manpages.ubuntu.com/manpages/noble/man8/apt.8.html>\
<https://askubuntu.com/questions/17823/how-to-list-all-installed-packages>
