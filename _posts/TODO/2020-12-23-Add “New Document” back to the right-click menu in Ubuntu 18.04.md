---
layout: post
title: "Add "New Document" back to the right-click menu in Ubuntu 18.04 or Ubuntu 20.04
#categories: github virtualbox
#date: 2021-12-23
---



## Problem:
I recently shifted to Ubuntu 18.04 or 20.04, I noticed that there was no option in the right-click menu of File Explorer (Nautilus) to create an empty text file. 

## Solution:
Create a file into `~/Templates` folder.

Step by step:
1. Open a Terminal and type:
```bash
touch ~/Templates/"Untitled Document"
```
2. Now you can open `Files` (Nautilus) application and right clic button to create a new file.


## Source:
<https://vitux.com/add-new-document-back-to-the-right-click-menu-in-ubuntu-18-04/>
