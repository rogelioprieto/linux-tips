
# How to make subwoofer work in Ubuntu

## Problem:
Using the same computer with Windows 10 and Ubuntu I noticed that the sound was worse in Ubuntu and I discovered why soon: subwoofer doesn't work out of the box!

## Solution:
The fix is quite easy to apply (but it was not easy to find the right one!). 

**Step 1.** First of all edit `/etc/pulse/default.pa` and add this line at the end:
```bash
load-module module-combine channels=6 channel_map=front-left,front-right,rear-left,rear-right,front-center,lfe
```
**Step 2.** edit `/etc/pulse/daemon.conf`, modify the line 

In Ubuntu 18.04 or less:
`enable-lfe-remixing: no` to `enable-lfe-remixing: yes`, then uncomment it (remove the semicolon ; in front of it). 

In Ubuntu 20.04:
locate the line `enable-remixing = yes`, then uncomment it (remove the semicolon ; in front of it). 


**Step 3.** Reboot your PC and enjoy the subwoofer!

## Source:

<https://www.andreagrandi.it/2013/06/22/how-to-make-subwoofer-work-in-ubuntu/>
<http://forums.gentoo.org/viewtopic-t-859769.html>
<http://askubuntu.com/questions/53802/subwoofer-sound-preferences-problem>


