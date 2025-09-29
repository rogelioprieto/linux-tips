To automatically disable your speakers when a headset is plugged in on Ubuntu, open the terminal and type

`alsamixer` to open the Alsamixer sound utility. Press F6 to select your sound card, navigate right to the "Auto-Mute Mode" column, and press the up or down arrow to enable the feature. If this doesn't work, you may need to reconfigure PulseAudio or the ALSA configuration files for your specific hardware, according to a forum on [Linux Mint](https://forums.linuxmint.com/viewtopic.php?t=301623). 

**Using `alsamixer`** 

1.  **Open the Terminal:** Press `Ctrl+Alt+T` to open the terminal.
2.  **Launch `alsamixer`:** Type `alsamixer` and press Enter.
3.  **Select the Sound Device:** Press the `F6` key to select the appropriate sound card.
4.  **Find Auto-Mute Mode:** Use the right arrow key to navigate to the "Auto-Mute Mode" column.
5.  **Enable Auto-Mute:** Use the up or down arrow keys to change the setting to "Enabled" or "Line Out".
6.  **Exit `alsamixer`:** Press the `Esc` key to exit.
7.  **Test:** Plug in your headphones to see if the speakers are muted.



Source: <https://unix.stackexchange.com/a/602614/289210>

Source: <https://www.bobjohnson.com/blog/how-to-install-ubuntu-on-a-panasonic-toughbook-cf31/>

In our tests, every CF-31 except for the MK5 had audio problems. If your sound is working, you are one of the lucky few who can skip this part. For the rest, here’s how to fix it:

1.  Open the terminal (keyboard shortcut Ctrl+Alt+T).
2.  Copy/paste `sudo gedit /usr/share/pulseaudio/alsa-mixer/paths/analog-output-speaker.conf` and press Enter.
3.  When prompted, type your password and press Enter.
4.  A text file called analog-output-speaker.conf will open up in a new window. In the text file, find this part:  
    
    \[Element Headphone\]
    switch = off
    volume = off
    	
    
    and change it to this:  
    
    \[Element Headphone\]
    switch = off
    volume = merge
    override-map.1 = all
    override-map.2 = all-left,all-right
    	
    
5.  Next, in the same text file, find this part:  
    
    \[Element Speaker\]
    required-any = any
    switch = mute
    volume = merge
    override-map.1 = all
    override-map.2 = all-left,all-right
    	
    
    and change it to this:  
    
    \[Element Speaker\]
    required-any = any
    switch = mute
    volume = off
    	
    
6.  Save your changes to analog-output-speaker.conf using either Ctrl+S or the save button at the top of the file editor.
7.  Go back to the terminal, type `sudo reboot` and press Enter to reset your Toughbook.
8.  Once your Toughbook boots back up, check the audio. It should be working now.


