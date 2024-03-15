# Install AnyDesk

1. Adding AnyDesk to Trusted Software Providers list on Ubuntu 22.04. If you got deprecated error, try downloading file and double click.
wget -qO - https://keys.anydesk.com/repos/DEB-GPG-KEY | apt-key add -

2. Adding AnyDesk repository to your System’s Repository
sudo sh -c 'echo "deb http://deb.anydesk.com/ all main" >> /etc/apt/sources.list.d/anydesk-stable.list'

3. Install AnyDesk
sudo apt update
apt install anydesk
sudo apt install anydesk
exit


Sources:
<https://opensource.com/article/22/9/deprecated-linux-apt-key>\
<http://deb.anydesk.com/howto.html>
