---
layout: post
title: How to install vscode extensions in vscodium
categories: vscode vscodium editors
author: Rogelio Prieto Alvarado
---


## Problem:

To keep my data private (I prefer not to allow Microsoft telemetry), I use VSCodium. However, I need to install an extension I found in the (Microsoft) [VSCode marketplace](https://marketplace.visualstudio.com/vscode).
The problem is when I search in VSCodium and the extension doesn't appear in the result list.


## Solution:
To solve it, you need to modify a configuration in the file: ```product.json``` to include the Microsoft marketplace URL.

Reason:\
VSCodium uses its own marketplace called "[Open VSX Registry](https://open-vsx.org/)". Microsoft owns the [VSCode marketplace](https://marketplace.visualstudio.com/vscode) and uses it exclusively in its software [Visual Studio Code](https://code.visualstudio.com/) (Microsoft version); this marketplace is not set by default in [VSCodium](https://vscodium.com/) (Free/Libre Open Source Software).


### Step by step:


Edit the `/usr/share/codium/resources/app/product.json` file is required. Steps:

1. Close VSCodium, open a `Terminal`, and go to the folder where `product.json` is located:
```bash
cd /usr/share/codium/resources/app
```
Choose *one of two options*: use a text editor or a `Terminal` app.

2. (*Option one*) Open an editor and modify the `product.json` file.\
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

  2. (*Option two*) The short way, you can use the `sed` command.
  ```bash
sudo cp product.json product.json.BACKUP-$(date '+%Y%m%d_%H%M%S')
sudo cp product.json product.json.TEMP
sudo sed -ne '\#serviceUrl#{a \ \ \ \ \"serviceUrl\": \"https:\/\/marketplace.visualstudio.com\/_apis\/public\/gallery\",' -e ';b };\#itemUrl#{a \ \ \ \ \"itemUrl\": \"https:\/\/marketplace.visualstudio.com\/items\",' -e ';b };\#extensionUrlTemplate#{a \ \ \ \ \"extensionUrlTemplate\": \"https:\/\/www.vscode-unpkg.net\/_gallery\/\{publisher\}\/\{name\}\/latest\",' -e ';b };p' /usr/share/codium/resources/app/product.json.TEMP |  sudo tee /usr/share/codium/resources/app/product.json >/dev/null
sudo rm product.json.TEMP
```

3. Close and open again, VSCodium.


Additionally, some extensions request to modify the `settings.json` file.
You can find it in the path (replace `YourUsername` with yours): `/home/YourUsername/.config/VSCodium/User`. 


## Source:

<https://github.com/VSCodium/vscodium/blob/master/DOCS.md#extensions-marketplace>\
<https://www.chrisatmachine.com/Neovim/22-vscodium-neovim/>\
<https://www.reddit.com/r/vscode/comments/mqip0o/vs_codium_extentions_different_to_vs_code/>\
<https://stackoverflow.com/questions/44057402/using-extensions-in-compiled-vscode>
