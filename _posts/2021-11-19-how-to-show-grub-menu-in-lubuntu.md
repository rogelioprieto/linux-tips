---
layout: post
title: "how to show grub boot menu in lubuntu"
categories: lubuntu grub virtualbox
---

## Problem: 

I want to reboot lubuntu in  Recovery mode (`Advanced options for Ubuntu > Recovery Mode`).
Problem: grub boot menu doesn't appears when reboot my computer and I can't see or choose any option.


## Solution:
To solve it, you can edit grub settings to show the menu.

### Step by step:


1. Use nano to edit the configuration file in the Terminal. Type: 
```
sudo nano /etc/default/grub
```
find and edit these lines: `GRUB_HIDDEN_TIMEOUT=0` or `GRUB_TIMEOUT_STYLE=hidden`. Add `#` at the start of this line to commment it out. They should be:
```
#GRUB_HIDDEN_TIMEOUT=0
```
or
```
#GRUB_TIMEOUT_STYLE=hidden
```
Save the changes and exit nano.

2. In the Terminal, type:
```
sudo update-grub
```

## Source:

<https://askubuntu.com/questions/668049/grub-menu-at-boot-time-holding-shift-not-working>
<https://help.ubuntu.com/community/Grub2/Setup>
