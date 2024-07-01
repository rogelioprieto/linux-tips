---
layout: post
title: "packages have unmet dependencies in apt"
categories: ubuntu
---

## Problem: 

You try to install or update an application but it not possible.

You get the error "The following packages have unmet dependencies: ...", example:

```bash
The following packages have unmet dependencies:
 python3-distutils : Depends: python3-lib2to3 (= 3.10.4-0ubuntu1) but 3.10.8-1~22.04 is to be installed
 python3-setuptools : Depends: python3-pkg-resources (= 59.6.0-1.2) but 59.6.0-1.2ubuntu0.22.04.1 is to be installed
```



## Solution:
To solve it, you should enable the `update` repository. For example in Ubuntu 22.04 the version name is: "jelly" then, the repository name is: `jammy-updates`


### Step by step:

1. Open a Terminal. Edit the file `sources.list`

```bash
sudo nano /etc/apt/sources.list
```

2. Enable the `jammy-updates` and save the file.
```bash
## add this line but change the url for the url you're using in the file
deb http://mirror.us-tx.kamatera.com/ubuntu/ jammy-updates main restricted
```

3. update apt
4. try to install your app again, in this example I'm installing `python3-pip`



```bash
sudo apt update
sudo apt install python3-pip
```

1. Check your disk/drive using chkdsk.
 
Besides, you can run ```chkdsk X: /F``` in cmd.exe or run the GUI based scan by right-clicking on the exFAT partitioned drive and selecting ```Properties-> Tools``` and running the ```Scan``` disk tool. The exFAT partition needs the scan to be done to reset it back to read/write capable.



## Source:

<https://askubuntu.com/a/1434426/822132>