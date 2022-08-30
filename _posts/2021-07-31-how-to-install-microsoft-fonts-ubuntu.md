---
layout: post
title: How to install microsoft fonts in Linux
categories: linux
author: Rogelio Prieto Alvarado
date: July 31, 2021
---


## Problem:
You open some Microsoft documents in LibreOffice on Linux, you’ll notice that the fonts look a bit different. You’ll also notice that you cannot find common fonts like:
Andale Mono
Arial Black
Arial (Bold, Italic, Bold Italic)
Comic Sans MS (Bold)
Courier New (Bold, Italic, Bold Italic)
Georgia (Bold, Italic, Bold Italic)
Impact
Times New Roman (Bold, Italic, Bold Italic)
Trebuchet (Bold, Italic, Bold Italic)
Verdana (Bold, Italic, Bold Italic)
Webdings


## Solution:
Install microsoft core fonts package; it includes the following font list:

- Andale Mono
- Arial Black
- Arial (Bold, Italic, Bold Italic)
- Comic Sans MS (Bold)
- Courier New (Bold, Italic, Bold Italic)
- Georgia (Bold, Italic, Bold Italic)
- Impact
- Times New Roman (Bold, Italic, Bold Italic)
- Trebuchet (Bold, Italic, Bold Italic)
- Verdana (Bold, Italic, Bold Italic)
- Webdings

To install execute this:

```bash
sudo apt install ttf-mscorefonts-installer
sudo fc-cache -vr
```

The first step install them, the second step update cache.


Additional solution:

If you want to install more microsoft fonts, you consider these fonts has copyrights.




## Source:  
Why Microsoft fonts are not installed by default in Linux?\
<https://itsfoss.com/install-microsoft-fonts-ubuntu/>
