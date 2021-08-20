
## Problem:
You open some Microsoft documents in LibreOffice on Linux, you’ll notice that the fonts look a bit different. You’ll also notice that you cannot find common fonts like Times New Roman, Arial etc.

## Solution:
´´´bash
sudo apt install ttf-mscorefonts-installer
sudo fc-cache -vr
´´´


## Source:  
<https://itsfoss.com/install-microsoft-fonts-ubuntu/>
