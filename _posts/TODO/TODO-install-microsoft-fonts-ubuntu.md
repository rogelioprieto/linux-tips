---
layout: post
title: How to install microsoft fonts in Linux
categories: linux
author: Rogelio Prieto Alvarado
date: May 05, 2021
---


## Problem:
You open some Microsoft documents in LibreOffice on Linux, you’ll notice that the fonts look a bit different. You’ll also notice that you cannot find common fonts like Times New Roman, Arial etc.

## Solution:
```bash
sudo apt install ttf-mscorefonts-installer
sudo fc-cache -vr
```

The first step install them, the second step update cache.

## Source:  
<https://itsfoss.com/install-microsoft-fonts-ubuntu/>
