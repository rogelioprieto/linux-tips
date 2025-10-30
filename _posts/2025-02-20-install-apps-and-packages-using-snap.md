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
    or using:

    ```bash
    snap list --all
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

    Remove the package but the space in hard disk will not be erased.
    ```bash
    sudo snap remove packagename
    ```




    If additionally you wanto to remove the cache:
    ```bash
    sudo snap remove --purge packagename
    ```
      **Warning!**, take care!. In this case, you completely remove a snap package, including all of its revision loop drives. Only by doing so, will the hard drive space be made available again.

3. Remove a package, just an specific revision (version)

    First get a full list, showing all the revisions:

    ```bash
    snap list --all
    ```

    Expected output:


    ```bash
    Name                         Version                          Rev    Tracking         Publisher        Notes
    bare                         1.0                              5      latest/stable    canonical✓       base
    chromium                     141.0.7390.54                    3265   latest/stable    canonical✓       -
    chromium-ffmpeg              120726-120170-119605-119293-etc  88     latest/stable    canonical✓       -
    firefox                      144.0.2-1                        7177   latest/stable    mozilla✓         -
    firefox                      140.4.0esr-2                     7170   latest/stable    mozilla✓         disabled
    .
    .
    .
    opera                        123.0.5669.23                    404    latest/stable    opera-software✓  -
    photogimp                    2.10.20                          141    latest/stable    pedro.ermarinho  -
    ```

    You can remove the apps that appears `disabled` (not `base,disabled`)

    ```bash
    sudo snap remove <packagename> --revision=<revision-number>
    ```



## Source:

<https://askubuntu.com/a/1431864/822132>  
<https://snapcraft.io/docs>  
<https://snapcraft.io/docs/get-started>  
<https://snapcraft.io/docs/installing-snap-on-ubuntu>  
