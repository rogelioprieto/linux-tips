---
layout: post
title: Cast the screen to a smart TV
categories: Linux
---

## Problem: 

I need to cast my screen (without audio) to a smart TV or another device.

## Solution:
Install an app on the computer, open a web browser on the smart TV (or client), and start casting.

### Step by step:

1. Download the Linux version, with the `.AppImage` version.
<https://github.com/pavlobu/deskreen/releases>

	For example, for a PC platform with Fedora 44, I've tested the x86 64-bit architecture (computers with Intel or AMD processors): `deskreen-ce-3.2.16-x86_64.AppImage`.
	
	*Optionally*, you visit the official Deskreen website:
	<https://deskreen.com/download/>
	
2. Open a Terminal and give permissions

	```bash
	cd Downloads/
	chmod +x deskreen-*.AppImage
	```


3. Execute and follow the steps
	```bash
	./deskreen-ce-3.2.16-x86_64.AppImage 
	
	```

4. (optional) If you're sure both devices are on the same Wifi: same network name and same frequency: 2.4 GHz or 5 GHz (both on 2.4 GHz or both on 5 GHz). Then set up the firewall and open the port Deskreen specifies.

```bash
sudo firewall-cmd --add-port=3131/tcp --permanent
sudo firewall-cmd --reload
```


## Sources:
<https://github.com/pavlobu/deskreen/releases>\
<https://deskreen.com/download/>
