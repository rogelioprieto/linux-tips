---
layout: post
title: Adwaita and Adwaita-green Icons Setup on Ubuntu MATE 24.04 
categories: conda bioinformatics
---

## Problem: 
Install [Adwaita icon theme](https://github.com/GNOME/adwaita-icon-theme) on Ubuntu MATE 24.04 with its [green variant color](https://github.com/dpejoh/Adwaita-colors). Installing in a straighforward steps works in Ubuntu 24.04 (gnome) but it didn't work in Ubuntu MATE 24.04.

![Adwaita colors](https://github.com/dpejoh/Adwaita-Colors/raw/main/v2.3.1.jpg){width=40%}


## Solution:

Install the adwaita icon theme and the gnome-icon-theme. Run a script to generate the green variant and finally, modify the configuration file.

### Step by step:

1. Install the Base Icon Packages

	Install the required base Adwaita and GNOME icon sets so the color variant has source icons to build from and fall back to:
	
	```bash
	sudo apt install adwaita-icon-theme-full gnome-icon-theme
	```
	
	*Note: the GNOME 46 removed legacy icons from adwaita-icon-theme, leaving older MATE applets with blank spaces on Ubuntu MATE 24.04. To fix this, you can install a legacy GNOME icon fallback package.*
	
2. Clone and Run the Adwaita-colors Setup Script

	Clone the `Adwaita-colors` repository and run the interactive installer to generate the green variant with custom folder icons:
	
	```bash
	git clone https://github.com/dpejoh/Adwaita-colors
	cd Adwaita-colors
	./setup
	```
	
	During the interactive prompt:
	* Select **1** (`Install icon themes`)
	* Select **2** -> **4** (`green` variant)
	* Select **3** (Custom install to `~/.icons`)
	* Select **y** (Include custom folder icons)
	

	*(Optional)* Remove the unused duplicate folder from `~/.local/share/icons/`:

	```bash
	rm -rf ~/.local/share/icons/Adwaita-green
	```

3. Configure `index.theme` for MATE

	**Option 1.** Edit the file using a script.
	
	```bash
	sed -i 's/^Hidden=true/Hidden=false/; s/^Inherits=.*/Inherits=Adwaita,gnome,hicolor/' ~/.icons/Adwaita-green/index.theme 
	```
	
	**Option 2.** You can manually edit the file.
	Open `~/.icons/Adwaita-green/index.theme` and verify that the `[Icon Theme]` header at the top looks like this so the theme is visible and inherits missing system icons cleanly:
	
	```ini
	[Icon Theme]
	Name=Adwaita-green
	Comment=The Only One
	Example=folder
	Inherits=Adwaita,gnome,hicolor
	Hidden=false
	```
	
> **Note:** Leave the `Directories=...` line and all `[scalable/...]` sections below the header intact.
	
> **Note:** Because the `./setup` script automatically updates the icon cache during installation, manually running `gtk-update-icon-cache` is only needed if you later add or edit SVG files inside `~/.icons/Adwaita-green`.)*
	
5. Fix the Blurry Volume OSD Icon

MATE's volume overlay can fall back to a low-resolution speaker icon from `Adwaita`. Copy the crisp 256x256 speaker icons from `gnome-icon-theme` directly into your `Adwaita-green` theme and refresh the icon cache:

```bash
mkdir -p ~/.icons/Adwaita-green/scalable/status
cp -L /usr/share/icons/gnome/256x256/status/audio-volume-*.png ~/.icons/Adwaita-green/scalable/status/
gtk-update-icon-cache -f -t ~/.icons/Adwaita-green
```

6. Apply the Theme in MATE Appearance
	1. Open **Appearance** from the MATE Control Center (or run `mate-appearance-properties`).
	2. Click **Customize...** in the bottom-right corner.
	3. Switch to the **Icons** tab and select **Adwaita-green**.




## Sources:

* **Adwaita-Colors Repository:** https://github.com/dpejoh/Adwaita-Colors
* **Freedesktop Icon Theme Specification:** https://specifications.freedesktop.org/icon-theme-spec/latest/
* **Ubuntu 24.04 `adwaita-icon-theme-full` Package:** https://packages.ubuntu.com/noble/adwaita-icon-theme-full
* **Ubuntu 24.04 `gnome-icon-theme` Package:** https://packages.ubuntu.com/noble/gnome-icon-theme
* **Ubuntu 24.04 `gtk-update-icon-cache` Package:** https://packages.ubuntu.com/noble/gtk-update-icon-cache	


> Note: This guide was generated with Gemini AI support. The author wrote the integration and the `sed` script.	