Google search:\
<https://www.google.com/search?q=what+permissions+need+it+for+solve+this+error%3A+Cannot+access+storage+file+%27%2Fhome%2Frogelio%2Fvirtual-machines-kvm-qemu%2FWindows10-21H1.qcow2%27+%28as+uid%3A64055%2C+gid%3A993%29%3A+Permission+denied&client=ubuntu-chr&hs=MHW&sca_esv=fbaa7d3b9c35fdd6&ei=RDX3aLDJHpW-p84Pv8mDMA&ved=0ahUKEwiw-7HE4bSQAxUV38kDHb_kAAYQ4dUDCBA&uact=5&oq=what+permissions+need+it+for+solve+this+error%3A+Cannot+access+storage+file+%27%2Fhome%2Frogelio%2Fvirtual-machines-kvm-qemu%2FWindows10-21H1.qcow2%27+%28as+uid%3A64055%2C+gid%3A993%29%3A+Permission+denied&gs_lp=Egxnd3Mtd2l6LXNlcnAiswF3aGF0IHBlcm1pc3Npb25zIG5lZWQgaXQgZm9yIHNvbHZlIHRoaXMgZXJyb3I6IENhbm5vdCBhY2Nlc3Mgc3RvcmFnZSBmaWxlICcvaG9tZS9yb2dlbGlvL3ZpcnR1YWwtbWFjaGluZXMta3ZtLXFlbXUvV2luZG93czEwLTIxSDEucWNvdzInIChhcyB1aWQ6NjQwNTUsIGdpZDo5OTMpOiBQZXJtaXNzaW9uIGRlbmllZDIFECEYoAFI9w5QswJYwwVwAXgBkAEAmAGbAaABmwGqAQMwLjG4AQPIAQD4AQH4AQKYAgKgArQBwgIKEAAYRxjWBBiwA5gDAIgGAZAGCJIHAzEuMaAH7gGyBwMwLjG4B6oBwgcDMi0yyAcM&sclient=gws-wiz-serp>

1. Find the correct user and group: The error shows a UID and GID, but the user and group names are more useful. The most common are `qemu` and `kvm` or `libvirt-qemu` and `libvirt`. 


    - Find the name for UID 64055 and GID 993:

        ```bash            
        grep 64055 /etc/passwd
        grep 993 /etc/group
        ```                
            
    - If those commands don't produce a result, you can check the `qemu.conf` file:

        ```bash
            sudo grep -E 'user|group' /etc/libvirt/qemu.conf
        ```            
        The output should show something like `user = "libvirt-qemu"` and `group = "kvm"`.
    
2. **Change ownership:** Use `sudo chown` to set the correct ownership recursively on the directory. Replace `qemu:kvm` with the user:group you found in the previous step.

    ```bash
    sudo chown -R qemu:kvm /home/rogelio/virtual-machines-kvm-qemu
    ```
    In my specific case, using Ubuntu 24.04 and cockpit 314-1, I executed this:
    ```bash
    sudo chown -R libvirt-qemu:kvm /home/rogelio/virtual-machines-kvm-qemu
    ```

3. **Restart the libvirt service** to apply the changes.
        
    ```bash
    sudo systemctl restart libvirtd.service
    ```


**OTHER STEPS:**

see the groups by user:
```bash
id -Gn rogelio
```
add to the group:
```bash
sudo usermod -a -G libvirt $USER
sudo usermod -a -G libvirt-qemu $USER
sudo usermod -a -G kvm $USER
sudo usermod -a -G polkit $USER
```

config file for specifying user and group:
```bash
sudo nano /etc/libvirt/qemu.conf
```

get username and groupname
```bash
$ getent passwd 64055 | awk -F: '{print $1}'
libvirt-qemu
$ getent group 993 | awk -F: '{print $1}'
kvm
```

sudo chown -R rogelio:libvirt-qemu /home/rogelio/virtual-machines-kvm-qemu/
sudo chmod -R 775 /home/rogelio/virtual-machines-kvm-qemu/



rogelio@tierra:~$ sudo systemctl restart libvirtd.service
rogelio@tierra:~$ virt-manager



