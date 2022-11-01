---
layout: post
title: How to install microsoft fonts in Linux
categories: linux
author: Rogelio Prieto Alvarado
date: July 31, 2021
---


## Problem:
You open some Microsoft Office documents in LibreOffice on Linux, you’ll notice that the fonts look a bit different.  
You’ll also notice that you cannot find common fonts like: Times New Roman, Arial, etc.

**Important note.** [Libre Office installs fonts with the same metrics](https://en.wikipedia.org/wiki/Liberation_fonts) as Times (Liberation Serif), Arial (Liberation Sans)  Arial narrow (Liberation Sans Narrow) and Courier (Liberation Mono); Nevertheless if you prefer install the microsoft font versions, follow this page.


## Solution (part 01):
Install [microsoft core fonts](https://en.wikipedia.org/wiki/Core_fonts_for_the_Web) [package in the Ubuntu repository](https://packages.debian.org/stretch/ttf-mscorefonts-installer); it includes the following font list:

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

To install, just execute this:

```bash
sudo apt install ttf-mscorefonts-installer
sudo fc-cache -vr
```

The first step install them, the second step update cache.


## Solution (part 02):

If you want to install more microsoft fonts, for example Windows Vista fonts. You should consider these fonts has copyrights.\
You can install these fonts: 
- Calibri
- Cambria
- Candara
- Consola
- Constantia
- Corbel

Execute this:
```
wget -qO- http://plasmasturm.org/dl/vistafonts-installer | bash
```

_Note 01._ If you get this error: `There is no .fonts directory in your home`. Try to create the fonts directory first:

```
mkdir ~/.fonts
``` 
_Note 02._ If wget fails, you can download the script `vistafonts-installer.sh` [here **↓**](https://github.com/rogelioprieto/linux-tips/blob/master/_posts/microsoft-fonts/vistafonts-installer.sh)
and execute in this way:

```
cat vistafonts-installer.sh | bash
```




## Source:  
Why Microsoft fonts are not installed by default in Linux?\
<https://itsfoss.com/install-microsoft-fonts-ubuntu/> \
Aristotle Pagaltzis - blog\
<http://plasmasturm.org/code/vistafonts-installer/>\
<http://plasmasturm.org/code/vistafonts-installer/vistafonts-installer>\
<http://plasmasturm.org/log/457/>


