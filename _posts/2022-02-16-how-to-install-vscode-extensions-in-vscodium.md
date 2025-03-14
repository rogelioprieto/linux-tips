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

`/usr/share/codium/resources/app/product.json` file

1. Close VSCodium and open a `Terminal`, and go to folder where `product.json`:
```bash
cd /usr/share/codium/resources/app
```
*Option one*  
2. Open and editor and modify the `product.json` file.\
Open the file in an editor. 
```bash
sudo nano product.json
```

Search and modify to set these lines: 
```bash
"extensionsGallery": {
    "serviceUrl": "https://marketplace.visualstudio.com/_apis/public/gallery",
    "itemUrl": "https://marketplace.visualstudio.com/items",
    "extensionUrlTemplate": "https://www.vscode-unpkg.net/_gallery/{publisher}/{name}/latest"
}
```

*Option two*  

2. A short way, you can use the sed command.

```bash
sudo cp product.json product.json.BACKUP-$(date '+%Y%m%d_%H%M%S')
sudo cp product.json product.json.TEMP
sudo sed -ne '\#serviceUrl#{a \ \ \ \ \"serviceUrl\": \"https:\/\/marketplace.visualstudio.com\/_apis\/public\/gallery\",' -e ';b };\#itemUrl#{a \ \ \ \ \"itemUrl\": \"https:\/\/marketplace.visualstudio.com\/items\",' -e ';b };\#extensionUrlTemplate#{a \ \ \ \ \"extensionUrlTemplate\": \"https:\/\/www.vscode-unpkg.net\/_gallery\/\{publisher\}\/\{name\}\/latest\"' -e ';b };p' /usr/share/codium/resources/app/product.json.TEMP |  sudo tee /usr/share/codium/resources/app/product.json >/dev/null
sudo rm product.json.TEMP
```
3. Close and open again VSCodium.



Additionally, some extensions request to modify `settings.json` file.
You can find it in the path (replace YourUsername for yours): `/home/YourUsername/.config/VSCodium/User`. 





## Source:

<https://github.com/VSCodium/vscodium/blob/master/DOCS.md#extensions-marketplace>\
<https://www.chrisatmachine.com/Neovim/22-vscodium-neovim/>\
<https://www.reddit.com/r/vscode/comments/mqip0o/vs_codium_extentions_different_to_vs_code/>\
<https://stackoverflow.com/questions/44057402/using-extensions-in-compiled-vscode>
