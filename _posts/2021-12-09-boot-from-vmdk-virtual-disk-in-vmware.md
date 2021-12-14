---
layout: post
title: Create a virtual machine using an existing vdmk file in Ubuntu 20.04
#categories: github virtualbox
---

## Problem: 

You have an existing `vdmk` (virtual disk) file and need to use it in Vmware Workstation Player in Ubuntu 20.04

## Solution:
To solve it, you have to create a new virtual machine. Then add the hard disk and setup as EFI or BIOS boot.

### Step by step:

1. In Workstation, go to **File > New > Virtual Machine**.
2. Select **Custom** and click **Next**.
3. Select the hardware compatibility you require and click **Next**.
4. In the Guest Operating System Installation selection screen, select **I will install the Operating System later** and click **Next**.
5. Select the guest operating system that is installed, including the version.
6. Click **Next**.
7. Provide a file name and choose the location where you want to save the virtual machine.
8. Click **Next**.
9. If necessary, adjust the number of processors and number of cores per processor required by the virtual machine and then click **Next**.
10. Adjust the amount of memory to be allocated to your virtual machine and click **Next**.
11. Select the desired networking type for your virtual machine and click **Next**.
12. Select Use an **Existing Virtual Disk** and click **Next**.
13. Click **Browse** and navigate to the location of your existing .vmdk file.
14. Select the .vmdk file and click **Next**.

¡NOTE! in the version 16 you have to create a **blank disk** and after the vm creation. Delete the "new" disk in Virtual Machine Settings.


After that, 
1. Open the vmx-file in a texteditor.
2. Search for the line\
`firmware = "efi"`
and change it for:\
`firmware = "bios"`
3. On next boot the VM will start with a legacy BIOS but will very very likely fail to boot.



## Source:

 <https://kb.vmware.com/s/article/2010196>
<https://communities.vmware.com/t5/VMware-Workstation-Player/How-to-change-the-BIOS-UEFI-to-Lagecy-Bios-of-a-virtual-machine/td-p/923771>