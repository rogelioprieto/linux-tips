---
layout: post
title: "Fix Screen Tearing & Window Dragging Lag on Vertical Monitor (Ubuntu MATE 24.04)"
categories: ubuntu display
---

## Problem: 
**Hardware & System Setup**

- **PC:** Dell OptiPlex 7060
- **OS:** Ubuntu MATE 24.04 LTS
- **Graphics:** Mesa Intel® UHD Graphics 630 (CFL GT2)
- **Monitors:**
  - Primary (Horizontal): Dell U2415b
  - Secondary (Vertical / Rotated 90°): Dell U2412Mb

**Symptoms:** 

1. **Scrolling screen tearing:** Scrolling text or images on the vertical monitor caused split-frame tearing (half the old frame and half the updated frame appearing simultaneously).
2. **Window-dragging lag:** Moving windows across the vertical monitor caused visible title bar stuttering, even while the horizontal monitor remained smooth.


**Root Cause:** Ubuntu 24.04's default X11 `modesetting` graphics driver ignores `TearFree` synchronization on rotated displays, while Picom's GLX compositor introduces frame-sync bottlenecks when dragging windows across mixed horizontal/vertical buffers.

## Solution:
To solve it, you need to install the `xserver-xorg-video-intel`  and  enable TearFree and TripleBuffer to force the Intel UHD 630 GPU to handle vertical sync and frame buffering directly in hardware across both horizontal and vertical orientations. .

### Step by step:

1\. Install the Native Intel Xorg Driver 

Ubuntu 24.04's default `modesetting` driver ignores `TearFree` on rotated screens. Installing the dedicated Intel X11 driver enables hardware-level frame synchronization: 

	```bash
	sudo apt update
	sudo apt install xserver-xorg-video-intel
	```

2\. Configure `TearFree` and `TripleBuffer` in X11 

Create and edit the X11 graphics configuration file so the Intel driver forces tear-free rendering across both horizontal and vertical monitors: 
	
	```bash
	sudo mkdir -p /etc/X11/xorg.conf.d
	sudo nano /etc/X11/xorg.conf.d/20-intel.conf
	```

Add the following configuration: 
	
	```
	Section "Device"
	   Identifier  "Intel Graphics"
	   Driver      "intel"
	   Option      "TearFree"      "true"
	   Option      "TripleBuffer"  "true"
	EndSection
	```
	
_(Save and exit with `Ctrl + O`, `Enter`, then `Ctrl + X`.)_ 

3\. Use Marco's Built-in Compositor 

With the Intel driver handling VSync in hardware, Picom's extra GLX overhead is no longer needed: 

1.  Open **MATE Tweak** -> **Windows**.
2.  Set **Window manager** to **Marco (built-in: Xpresent)**.
3.  _(Optional)_ Remove the unused Picom test config if still present: 
    ```bash
    rm -rf ~/.config/picom
    ```

4\. Reboot 

Restart the PC so X11 loads the `intel` driver and `20-intel.conf` rules.

### Rollback Instructions
If you ever need to revert to the default Ubuntu `modesetting` driver, remove the custom configuration file and reboot:

```bash
sudo rm /etc/X11/xorg.conf.d/20-intel.conf
sudo reboot
```


## Sources:

- **Intel Xorg Driver Manual (`man 4 intel`)**: Documents the `Driver "intel"`, `Option "TearFree" "true"`, and `Option "TripleBuffer" "true"` flags for eliminating screen tearing on Intel integrated graphics.
  - Link: <https://manpages.ubuntu.com/manpages/noble/man4/intel.4.html>
- **Ubuntu 24.04 Package (`xserver-xorg-video-intel`)**: Dedicated DDX (Device-Dependent X) display driver package for Intel integrated graphics in Ubuntu 24.04 LTS (Noble Numbat), replacing the generic `modesetting` driver.
  - Link: <https://launchpad.net/ubuntu/noble/amd64/xserver-xorg-video-intel>
- **ArchWiki — Intel Graphics (`TearFree` & Xorg Configuration)**: Community documentation detailing `TearFree` and `TripleBuffer` configuration with `xf86-video-intel` versus `modesetting` on rotated X11 displays.
  - Link: <https://wiki.archlinux.org/title/Intel_graphics>
- **Marco Window Manager Manual (`man 1 marco`)**: Official documentation for the MATE desktop window manager and its built-in compositing modes.
  - Link: <https://manpages.ubuntu.com/manpages/noble/man1/marco.1.html>
- **X.Org Server Documentation (`xorg`)**: Official X.Org foundation documentation covering `/etc/X11/xorg.conf.d/` device configuration files and X11 display drivers.
  - Link: <https://www.x.org/Documentation/>

