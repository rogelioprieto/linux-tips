---
layout: post
title: Why is middle mouse button paste disabled in Ubuntu 26.04 and Fedora 44?
categories: ubuntu fedora
---

## Problem: 

Middle-Click Paste (is called [Primary Paste](https://www.freedesktop.org/wiki/Specifications/Clipboa)) broke after upgrading to Ubuntu 26.04 and Fedora 44. Gnome 50 the Desktop Environment, used by Ubuntu and Fedora, disabled the button.

This problem was well described by Jonathan Mainguy in his [blog](https://jmainguy.com/logbook/middle-click-paste-fedora-44/).

## Solution:
Re-enable primary paste for your user.


### Step by step:

1. Open a Terminal, re-enable primary paste, execute:
```bash
gsettings set org.gnome.desktop.interface gtk-enable-primary-paste true
```
2.  Verify:
```bash
gsettings get org.gnome.desktop.interface gtk-enable-primary-paste
```


## Sources:

<https://jmainguy.com/logbook/middle-click-paste-fedora-44/>\
<https://www.freedesktop.org/wiki/Specifications/ClipboardsWiki/>