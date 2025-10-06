---
layout: post
title: Track the mouse or keyboard buttons pressed or released
categories: linux packages
---



## Problem: 
My logitech T400 mouse is working but the middle button press is not detected. The middle button just works for scrolling.


## Solution:

Before trying to remap the button, you should assure that the middle button click (press or release event) is detected.


### Step by step:

1. Use the `xev` (X Event Tester) command to view events using the X Window System, a framework for creating and managing graphical user interfaces (GUIs), available in Ubuntu.

```bash
xev
```

_Optional_  
You can search for specific lines, for example the `ButtonRelease`
```bash
xev | grep -A2 --line-buffered '^ButtonRelease'
```

## Source:

<https://superuser.com/a/462789>  
<https://www.baeldung.com/linux/monitor-device-events>  


