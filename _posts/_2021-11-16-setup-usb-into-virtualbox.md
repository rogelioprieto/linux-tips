TODO
1. Install virtual box extension
2. vboxuser

There is one final step for this. In order for VirtualBox to have access to the USB subsystem, the user running VirtualBox must belong to the vboxuser group. To do this, open up a terminal and issue the following command:

´´´bash
sudo usermod -aG vboxusers <USERNAME>
´´´
Where USERNAME is the name of the user.

Once the command runs, logout and log back in.

3. Activate USB support

Open up VirtualBox, right-click on the virtual machine that needs access to USB, and click Settings. In the VM settings window, click USB. You should see that USB is now available. Click on the + button under USB Device Filters to add a new device (Figure B).


## Source:
<https://www.techrepublic.com/article/how-to-enable-usb-in-virtualbox/>

Note!!!!!!!!!!!!!!!!!!!!!!!!!!
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!1
sudo usermod -aG vboxusers $USER