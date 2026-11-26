---
layout: post
title: Install Microsoft Aptos font
---

## Problem: 

I need to open a document that uses the Microsoft Aptos font, but the font is replaced by another. In LibreOffice, the font name is shown in italics: *Aptos*.

Legal advice: 
- Aptos is a **proprietary** typeface owned by Microsoft.
- **Permitted Use**: install and use copies of the font on non-Windows operating systems (like Ubuntu) for personal or professional document creation.
- **Redistribution Limits**: You cannot repackage, sublicense, or redistribute the font files themselves in your own software repositories or public downloads.

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
<https://alexhost.com/faq/how-to-install-fonts-on-gnu-linux/>\
<https://learn.microsoft.com/zh-tw/typography/font-list/aptos>