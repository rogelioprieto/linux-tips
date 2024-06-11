---
date: 2024-04-19
---

1. Install vmware
```bash
 1042  sha256sum /media/rogelio/DATOS2024/BACKUP---2024-04-16/Downloads/VMware-Player-Full-17.5.1-23298084.x86_64.bundle 
 1050  sudo apt-get update
 1052  sudo apt update
 1053  sudo apt install build-essential linux-headers-generic
 1055  wget --user-agent="Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101 Firefox/60.0" https://www.vmware.com/go/getplayer-linux
 1056  chmod +x getplayer-linux
 1057  sudo ./getplayer-linux --required --eulas-agreed
 1072  chmod +x VMware-Player-Full-16.2.5-20904516.x86_64.bundle 
 1073  ./VMware-Player-Full-16.2.5-20904516.x86_64.bundle 
 1074  sudo ./VMware-Player-Full-16.2.5-20904516.x86_64.bundle 
 1075  sudo /usr/bin/vmware-installer -u vmware-player
 1077  sudo ./VMware-Player-Full-16.2.5-20904516.x86_64.bundle --required --eulas-agreed
 1078  sudo /usr/bin/vmware-installer -u vmware-player
```

2. If appears gcc error, then install gcc-12

https://askubuntu.com/a/1499855/822132
install gcc-12

Sources:

<https://www.vmware.com/resources/compatibility/search.php?deviceCategory=software>