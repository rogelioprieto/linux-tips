---
layout: post
title: Pomodoro and time tracking apps 
categories: conda bioinformatics
---

## For Fedora 44+ or Ubuntu 24.04


## For Ubuntu MATE 24.04

As Ubuntu MATE 24.04 uses MATE desktop environment and X11 (Xorg).

Note: Ubuntu MATE 24.04 doesn't use gnome desktop environment,we try to save disk space and dont install the `gnome-pomodoro` app because will include gnome dependecies.


### Focus Timer hq
**Option 1.** Install from flatpak for newer version.
```bash
flatpak install flathub io.github.focustimerhq.FocusTimer
```
This version has tray icon compatibility with Ubuntu & Ubuntu MATE 24.04 and Fedora 44+.



**Option 2.** Install version 0.25.1 via apt, then manually customize its options.

1. Install from:
<https://focustimerhq.github.io/>

2. To enable Auto-pause your media in Focus Timer:

	1. Open Preferences.
	2. Click Plugins, use Custom actions
	3. Click Add (or +) to create two rules:
		1. **Pause on Break:**

			-   **Name:** `Pause Media`
			-   **Command:**
				```sh
				sh -c 'for p in $(dbus-send --session --dest=org.freedesktop.DBus --type=method_call --print-reply /org/freedesktop/DBus org.freedesktop.DBus.ListNames | grep -o "org.mpris.MediaPlayer2[^\"]*"); do dbus-send --session --type=method_call --dest="$p" /org/mpris/MediaPlayer2 org.mpris.MediaPlayer2.Player.Pause; done'
				```
			-   **Trigger / Event:** Select **Short Break** and **Long Break** (or set **State** to **Break**).
		2. **Resume on Focus**

			-   **Name:** `Resume Media`
			-   **Command:**
				```sh
				sh -c 'for p in $(dbus-send --session --dest=org.freedesktop.DBus --type=method_call --print-reply /org/freedesktop/DBus org.freedesktop.DBus.ListNames | grep -o "org.mpris.MediaPlayer2[^\"]*"); do dbus-send --session --type=method_call --dest="$p" /org/mpris/MediaPlayer2 org.mpris.MediaPlayer2.Player.Play; done'
				```
			-   **Trigger / Event:** Select **Pomodoro** (when a focus session starts/resumes)

		3. **Start Screensaver**
			- **Name:** `Screensaver`
			- **Command:** 
				```sh
				sh -c 'sleep 10 && mate-screensaver-command -a' 
				```
			-   **Trigger / Event:** Select **Short Break** and **Long Break** and set **Start**.


### workrave

1. Install the MATE Panel Applet
	```bash
	sudo apt update
	sudo apt install workrave workrave-mate
	```
	
2. Add Workrave to the Panel

	1.  **Right-click** an empty area on your top or bottom MATE panel.
	2.  Select **Add to Panel...** from the menu.
	3.  Scroll down (or type `Workrave` in the search box), select **Workrave**, and click **Add**.
	4.  Click **Close**. The Workrave sheep icon and a timer bar will now appear on your panel.


3. Show All Three Timers in the MATE panel.

	By default, Workrave sometimes only displays one or two timers in the panel. To make sure Micro-break, Rest break, and Daily limit are all visible:
	
	1. Right-click the Workrave applet on your panel (or the Workrave tray icon) and choose Preferences.
	2. In the left sidebar, expand User interface and click Applet.
	3. Look for the Timers section (or Layout settings) where each break type is listed.
	4. Set the display position/visibility for Micro-break, Rest break, and Daily limit to Always (instead of Never or Cycle).


4. Activate "Reading mode"

	By default, Workrave pauses timers after ~5 seconds of no mouse or keyboard input. If your Pomodoro work involves reading documentation or thinking without typing. 

5. Handle the Micro-Break & Long Break

	Workrave does not have a built-in "every 4th break is longer" counter, so you have two ways to handle the other timers:

	- **Option A:** Classic Strict Pomodoro (Disable Micro-break). Go to Timers > Micro-break and uncheck Enable timer. Use Daily limit to set your total daily Pomodoro goal (e.g., 4:00:00 for eight 25-minute Pomodoros plus breaks). When you finish 4 cycles, manually click the applet and choose Rest break to take a 15–20 minute break.
	
	- **Option B:** Automated Long Break Approximation. Set Micro-break to 0:25:00 work / 0:05:00 break, and set Rest break to 1:40:00 (100 minutes, equal to four 25-minute sprints) with a 0:15:00 break duration. This mimics a long break every 4 sessions.