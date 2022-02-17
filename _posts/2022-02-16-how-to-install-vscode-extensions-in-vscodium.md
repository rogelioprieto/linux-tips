---
layout: post
title: How to install vscode extensions in vscodium
categories: vscode vscodium editors
author: Rogelio Prieto Alvarado
---

## Problem: 

I use VSCodium. I need to install an extension that I found in (microsoft) VSCode marketplace.
The problem is when I search in VSCodium and the extension doesn't appears in result list.



## Solution:
To solve it, you need to modify a configuration in the file: ```product.json``` to include the microsoft marketplace url.

Reason:\
VSCodium use their own marketplace called "[https://open-vsx.org/](Open VSX Registry)". Microsoft is owner from VSCode marketplace and use it exclusively.


### Step by step:

1. Open a Terminal, and open `/usr/share/codium/resources/app/product.json` file:
   ```bash
  cd /usr/share/codium/resources/app
  sudo nano product.json
  ```
2. Modify the `product.json` file.\
*Option one* Open an editor. Search and modify to set these lines: 
```bash
"extensionsGallery": {
    "serviceUrl": "https://marketplace.visualstudio.com/_apis/public/gallery",
    "itemUrl": "https://marketplace.visualstudio.com/items"
}
```
*Option two* In a short way you can used sed command.

```bash
sudo cp product.json product.json.BACKUP
sudo sed -ne '\#serviceUrl#{a \ \ \ \ \"serviceUrl\": \"https:\/\/marketplace.visualstudio.com\/_apis\/public\/gallery\",' -e ';b };\#itemUrl#{a \ \ \ \ \"itemUrl\": \"https:\/\/marketplace.visualstudio.com\/items\"' -e ';b };p'  /usr/share/codium/resources/app/product.json.BACKUP |  sudo tee /usr/share/codium/resources/app/product.json >/dev/null
```
3. Close and open again VSCodium.



Additionally, some extensions request to modify `settings.json` file.
You can find it in the path (replace YourUsername for yours): `/home/YourUsername/.config/VSCodium/User`. 





## Source:

<https://github.com/VSCodium/vscodium/blob/master/DOCS.md#extensions-marketplace>\
<https://www.chrisatmachine.com/Neovim/22-vscodium-neovim/>\
<https://www.reddit.com/r/vscode/comments/mqip0o/vs_codium_extentions_different_to_vs_code/>\
<https://stackoverflow.com/questions/44057402/using-extensions-in-compiled-vscode>
