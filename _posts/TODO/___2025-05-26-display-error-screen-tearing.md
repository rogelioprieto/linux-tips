Error:
when scroll, the refresh is by visible low, you can be "two content parts"
Example, this video shows the problem:
<https://youtu.be/rg_0D96ZGSY?si=Dv4YO81LxBH_EtpC>

In my case, the display tearing occurs when I do vertical scrool in a web or text editor (like VSCodium, VSCode, etc)


Solution:
Previously I installed the "latest" stable OEM-kernel (installed in May 2025)
(https://wiki.ubuntu.com/Kernel/OEMKernel#Stable_Release_Updates_.28SRU.29_cadence) (https://canonical-kernel-docs.readthedocs-hosted.com/latest/reference/oem-kernels/).

```bash
sudo apt install linux-oem-24.04a
```

Update the grub
```bash
sudo update-grub
```



```bash
sudo nano /etc/X11/xorg.conf.d/20-intel.conf
```

and add the following to it, then save it:

```bash
Section "Device"
    Identifier "Intel Graphics"
    Driver "intel"
    Option "TearFree" "true"
EndSection
```

Sources:  
<https://forums.linuxmint.com/viewtopic.php?t=438762>
