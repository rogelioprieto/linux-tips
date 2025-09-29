---
layout: post
title: Track which mouse buttons are pressed or release
categories: linux packages
---



## Problem: 
My logitech T400 mouse is working but the middle button press is not detected. The middle button just works for scrolling.


## Solution:

Before trying to remap the button, you should assure that the middle button click (press or release event) is detected.


### Step by step:

1. Use the `xev` command for view events using the X Window System events framework for creating and managing graphical user interfaces (GUIs).

```bash
xev
```

_Optional_  
You can search for specific lines, for example the `ButtonRelease`
```bash
xev | grep -A2 --line-buffered '^ButtonRelease'
```



