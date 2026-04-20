---
layout: post
title: Upgrade VirtualBox
categories: github virtualbox
---

## Problem: 

I have installed an older version of VirtualBox and need to upgrade to the latest version.

## Solution:
First, uninstall all VirtualBox packages, then install the new VirtualBox version.

### Step by step:

1. Open a Terminal, then execute:  
```bash
sudo apt purge "virtualbox*"
sudo apt autoremove
```

    You can verify the removal:

   ```bash
   dpkg -l | grep virtualbox
   ```


2. (*Option A*) Install the new VirtualBox version from the apt repository. You can install the version available in the repository, check the version, and **if it's the most recent**, install it:

```bash
apt-cache showpkg virtualbox
sudo apt-get install virtualbox

```

3. (*Option B*) Install the most recent Virtual version from the official website:
	
	Choose the right version for your operating system and platform:
    [VirtualBox Download](https://www.virtualbox.org/wiki/Downloads)

    To install, open a file explorer and double click or use a Terminal to execute:
    ```bash
    sudo dpkg -i ~/Downloads/virtualbox.deb
    ```

	Remember to replace the path or filename with yours.


## Sources:
<https://askubuntu.com/a/703750>  
<https://www.linuxtechi.com/how-to-install-virtualbox-in-ubuntu>  
<https://askubuntu.com/questions/40779/how-do-i-install-a-deb-file-via-the-command-line>
