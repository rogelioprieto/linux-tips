# Disable the guest session in Ubuntu MATE 24.04

```bash
cd /etc/lightdm/
```

Create the conf file:

```bash
sudo nano /etc/lightdm/lightdm.conf
```

add this text:

```bash
[Seat:*]
allow-guest=false
```

Source:  
<https://ubuntu-mate.community/t/disable-guest-account-in-ubuntu-mate-22-04/25361>  
<https://askubuntu.com/questions/62564/how-do-i-disable-the-guest-session>
<http://www.webupd8.org/2014/08/lightdm-how-to-disable-user-list-or.html>