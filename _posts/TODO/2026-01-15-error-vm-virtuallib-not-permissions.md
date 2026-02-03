---
layout: post
title: "Error opening a virtual machine using kvm and virtual machine manager"
categories: kvm vm
---

## Problem: 
Open the virtual machine manager (`virt-manager`), select a virtual machine, clic Open. Then, this error appears: 
```
Error starting domain: unsupported configuration: Domain requires KVM, but it is not available. Check that virtualization is enabled in the host BIOS, and host configuration is setup to load the kvm modules.
```
This error appears in Ubuntu 24.04 with Kernel Linux `6.14.0-1019-oem`.


## Solution:

### Solution 01. Load manually.
Load the kvm module, it's different for amd or intel cpus.

### Step by step:

1.  **Open a Terminal**  
    for **intel** cpu:
    ```bash
    sudo modprobe kvm_intel    
    ```
    for **amd** cpu:
    ```bash
    sudo modprobe kvm_amd
    ```
    Note: if you don't know the CPU architecture of your computer, try:  `lscpu | grep 'Model name:'`
1.  **Verify it loaded**:
    ```bash
    lsmod | grep -E '(kvm_intel|kvm_amd)'
    ```
    The output should be a line with `kvm_intel` or `kvm_amd`.

### Solution 02. Load automatically the kvm module at startup

1. Create a .conf file:
    ```bash
    cd /etc/modprobe.d/
    sudo echo "options kvm_intel nested=1" > mykvm.conf
    ```
3. Restart your computer using the GUI or type in a Terminal:
```bash
sudo reboot
```
4. _(optional)_ If after reboot the error appears again, try this last step:
```bash
sudo update-initramfs -u
```
and reboot again.

#### NOTE⚠️: if you has installed Oracle VirtualBox, verify this!

**Conflict with VirtualBox (Kernel 6.12+)**
If you are using a newer Ubuntu kernel (6.12+), KVM initializes immediately upon loading, locking the CPU and preventing VirtualBox from running. 

-   **Solution:** You can add `kvm.enable_virt_at_load=0` to the kernel boot parameters.
    -   If you’re using Grub on a Debian derivative (e.g. Ubuntu), edit `/etc/default/grub`, add the parameter `kvm.enable_virt_at_load=0` to `GRUB_CMDLINE_LINUX_DEFAULT`, and run `sudo update-grub`.

#### NOTE⚠️: Verify kvm module is not in a blacklist file.

```bash
grep -E -r "(kvm_intel|kvm_amd)" /etc/modprobe.d/
```
If you get output like this:
```bash
/etc/modprobe.d/blacklist-kvm.conf:blacklist kvm_intel
/etc/modprobe.d/blacklist-kvm.conf:blacklist kvm_amd
```
You can delete or rename this file:
```bash
sudo mv /etc/modprobe.d/blacklist-kvm.conf /etc/modprobe.d/blacklist-kvm.confBACKUP
```

Reboot again!


## Sources:
<https://www.ibm.com/docs/en/linux-on-systems?topic=kvsi-set-up-kvm-host-3>
<https://docs.redhat.com/en/documentation/red_hat_enterprise_linux/7/html/virtualization_deployment_and_administration_guide/sect-nested_virt_setup>
<https://askubuntu.com/a/232318/822132>
<https://unix.stackexchange.com/a/798135/289210>
