---
layout: post
title: "write here the title!!!!"
categories: github virtualbox
---





## Problem: 

I need to burn a data dvd. I want to do this in Nautilus.

## Solution:

Option 1. Using Nautilus, copy & paste and use the bar "Write disc"

```
sudo apt-get install -y nautilus-extension-burner
```

Option 2. Install and use Brasero application.
```

```

To solve it, you can make use of Windows ```Diskpart``` and check the disk using ```chkdsk``` command.



### Step by step:

1. Open CMD prompt, type ```windows+r```, then ```cmd```.  
2. Type in the command as the following:  
(Note: ```N``` refers the volume number of the read-only disk)

```
diskpart
list volume

select volume N 
att vol clear readonly
```

3. Check your disk/drive using chkdsk.
 
Besides, you can run ```chkdsk X: /F``` in cmd.exe or run the GUI based scan by right-clicking on the exFAT partitioned drive and selecting ```Properties-> Tools``` and running the ```Scan``` disk tool. The exFAT partition needs the scan to be done to reset it back to read/write capable.



## Source:

 <https://www.diskpart.com/articles/exfat-windows-7-read-only-4125.html>  
<http://roblomtech.blogspot.com/2010/08/how-to-fix-exfat-drive-being-write.html>
