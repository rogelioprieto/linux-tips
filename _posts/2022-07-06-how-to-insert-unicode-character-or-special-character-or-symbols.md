---
layout: post
title: how to insert unicode character or special character or symbols
categories: bash Ubuntu
---

## Problem: 

When you connect an exFAT drive is mounted as read-only in Windows 7; so you can't write in this drive.

## Solution:
To solve it, you can make use of Windows ```Diskpart``` and check the disk using ```chkdsk``` command.

### Step by step:

1. Open a Terminal, press `Ctrl+Alt+T`.  
2. In Ubuntu, hold down together: `Ctrl` + `Shift` + `u` then a underlined u letter should appear.  Release keys. Enter the Unicode for the symbol you need. For example: Enter `7E`(Unicode code for `~`), press `space` or `Enter`.

If you need to view the Unicode codes table:\
- [Legacy Entity sets](https://www.w3.org/TR/xml-entity-names/Overview.html#legacysets)\
- [Unicode Character Ranges for Scientific Documents](https://www.w3.org/TR/xml-entity-names/Overview.html#blocks)



## Source:

 <https://www.w3.org/TR/2014/REC-xml-entity-names-20140410/>  
<https://www.linux-magazine.com/Online/Blogs/Productivity-Sauce/How-to-Enter-Unicode-Characters>
