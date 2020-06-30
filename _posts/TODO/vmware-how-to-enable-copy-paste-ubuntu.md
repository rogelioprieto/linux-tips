# Vmware: How to enable copy and paste in Ubuntu

## Problem:
You are using a virtual machine VMWare and you can not copy/paste in your ubuntu guest.

## Solution:
You need to install vmware tools.

If your guest OS is Ubuntu Desktop 16.04 or higher
```bash
sudo apt-get install open-vm-tools open-vm-tools-lts-trusty-desktop
```

If your guest OS is Ubuntu 14.04 Desktop (Trusty Tahr)
```bash
sudo apt-get install open-vm-tools open-vm-tools-desktop 
```

For Ubuntu servers versions:
```bash
apt-get install open-vm-tools
```

Source:\
<https://help.ubuntu.com/community/VMware/Tools>
