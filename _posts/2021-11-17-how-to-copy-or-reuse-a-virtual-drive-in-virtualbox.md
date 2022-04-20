---
layout: post
title: "how to copy or reuse a .vdi virtual drive  in VirtualBox (error: UUID already exists)"
categories: virtualbox
---

## Problem: 

You copy a `.vdi` file (virtual drive) and you get an error when create a new Virtual Machine in Virtual Box using this `.vdi` file.

![2021-11-17-error-Screenshot](https://raw.githubusercontent.com/rogelioprieto/linux-tips/master/_posts/images_posts/2021-11-17-error-Screenshot.png)

## Solution:
To solve it, you can assing another `UUID` or clone the file using the `VBoxManage` tool.

### Step by step:

**Option 01**\
You have copied the vdi file.
1. Open a Terminal.  
2. Type in the command as the following:  
```
VBoxManage internalcommands sethduuid "/path/to/myDisk1.vdi"
```
Example:
```
VBoxManage internalcommands sethduuid "/home/rogelio/VirtualBox VMs/myDisk1.vdi"
```

**Option 02**\
You want to re-use the `.vdi file`. You should clone the file.
1. Open a Terminal and type:
```
VBoxManage clonevdi myDisk1.vdi cloneDisk.vdi
```


## Source:
<https://tecadmin.net/change-the-uuid-of-virtual-disk/>  
