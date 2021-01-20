# How do I find out my motherboard model? or the installed hardware of my computer?

## Problem:
I need to know my hardware specs: Motherboard model, CPU, RAM, etc.

## Solution:
1. Using the Terminal.
```lshw``` command

2. GUI apps.

  a. hardinfo.
  
  Search for the hardinfo package in the Software Center or run ```sudo apt-get install hardinfo``` from the command line. 
The motherboard make and model can be found on the ```Devices > DMI``` page.

If appears this error:  ```Gtk-Message: Failed to load module "canberra-gtk-module"```, you need to install this libraries, open a ```Terminal``` and type this command:

```sudo apt-get install libcanberra-gtk-module libcanberra-gtk0```

  b. ```lshw-gtk``` – Graphical frontend for ```lshw``` command.


## Source:
<https://askubuntu.com/questions/179958/how-do-i-find-out-my-motherboard-model>
