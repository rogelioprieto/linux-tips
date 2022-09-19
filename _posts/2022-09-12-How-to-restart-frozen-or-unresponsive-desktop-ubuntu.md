---
layout: post
title: "How to restart frozen or unresponsive desktop GUI in Ubuntu"
categories: [bash, ubuntu]
resource: true
---

## Problem: 

The GUI or desktop is unresponsive (frozen) in Ubuntu 20.04

## Solution:

To solve it, you can kill all the processes that are causing the problems or restart the desktop (GUI). This document will show you, the second one, how to restart the desktop (GUI).

### Step by step:

1. Open a Terminal, just press `Ctrl+Alt+T`. If can't open the Terminal windows. You should use another terminal, press`Ctrl+Alt+F3` (press and keep `Control` key, `Alt` and `F3` keys.
2. Type this command to restart the Desktop:  

```
sudo systemctl restart systemd-logind
```






## Source:

<https://linuxconfig.org/how-to-restart-gui-on-ubuntu-20-04-focal-fossa>
