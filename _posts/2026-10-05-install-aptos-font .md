---
layout: post
title: Install Microsoft Aptos font
---

## Problem: 

I need to open a document that use the Microsoft Aptos Font.

## Solution:

To solve it, download and install the Microsoft Aptos font, then update the system's font cache.

### Tested


✅ Ubuntu 24.04\
✅ Fedora 44


### Step by step:

1. Open the Terminal app and execute:

```bash
# 1. Create a local fonts directory for Apto
mkdir -p ~/.local/share/fonts/aptos
# 2. Download the official Microsoft Aptos Fonts package into /tmp
wget -O /tmp/aptos.zip "https://download.microsoft.com/download/8/6/0/860a94fa-7feb-44ef-ac79-c072d9113d69/Microsoft%20Aptos%20Fonts.zip"

# 3. Unzip the fonts directly into your local fonts directory
unzip /tmp/aptos.zip -d ~/.local/share/fonts/aptos

# 4. Refresh your system's font cache
fc-cache -fv
```

```

## Sources:
<https://www.microsoft.com/en-us/download/details.aspx?id=106087>\
<https://www.techspot.com/downloads/7566-aptos-font.html>\
<https://docs.stg.fedoraproject.org/en-US/quick-docs/fonts/>\
<https://alexhost.com/faq/how-to-install-fonts-on-gnu-linux/>