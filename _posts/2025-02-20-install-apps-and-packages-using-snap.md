---
layout: post
title: "Install apps and packages using snap"
categories: linux packages
---

## Problem: 

You need install or remove applications or packages using snap.

## Solution:

You can use the Terminal and the snap command.

### Step by step:

1. List the snap packages installed:
```bash
snap list
```
Additionally you can view all the disk blocks using by the apps or packages:
```bash
lsblk
```

1. Install a package:
```bash
sudo snap install packagename
```

2. Remove a package:
remove the package but the space in hard disk will not be erased.
```bash
sudo snap remove packagename
```

If additionally you wanto to remove the cache:
```bash
sudo snap remove --purge packagename
```
In this case, you completely remove a snap package, including all of its revision loop drives. Only by doing so, will the hard drive space be made available again.

## Source:

<https://askubuntu.com/a/1431864/822132>  
<https://snapcraft.io/docs>  
<https://snapcraft.io/docs/get-started>  
<https://snapcraft.io/docs/installing-snap-on-ubuntu>  
