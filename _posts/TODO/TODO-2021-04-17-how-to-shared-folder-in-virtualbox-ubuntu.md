1. Interface  
<https://helpdeskgeek.com/virtualization/virtualbox-share-folder-host-guest/>

2. Add yourself to the vboxsf group within the guest VM

```
sudo adduser $USER vboxsf
```
or in your ubuntu host type:
```
sudo usermod -aG vboxusers $USER
```

3. log out and log in  Ubuntu session again.



## Source:
<https://stackoverflow.com/questions/26740113/virtualbox-shared-folder-permissions>\
<https://www.easytechguides.com/install-virtualbox-guest-additions/>