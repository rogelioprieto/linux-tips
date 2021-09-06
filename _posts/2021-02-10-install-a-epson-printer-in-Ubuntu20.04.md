---
layout: post
title: How to install a Epson printer/scanner in Ubuntu 20.04
categories: linux
author: Rogelio Prieto Alvarado
date: February 10, 2021
---

## Problem:

You have a Epson printer or scanner and you need to use in Ubuntu 20.04


## Solution:

NOTE: this solution is taken from: <https://tutorialforlinux.com/>


You are Welcome! The Tutorial Shows You Step-by-Step How to Download and Install Epson EcoTank L3150/L3160 Printer/Scanner Driver in Ubuntu 20.04 Focal LTS GNU/Linux Desktop.

And to Install Epson L3150/L3160 Printer on Ubuntu Focal you need to Setup the Proprietary Driver.

Especially relevant: using the Epson Printer Utility Software, you can check Ink Levels, View Error and other Status…

Finally, the guide includes also instructions on How to Getting-Started Epson L3150/L3160 Scanning on Ubuntu.

##Steps

## Part I - Install scanner driver

1. Launching Terminal

Open a Terminal window
Ctrl+Alt+t on Desktop
(Press “Enter” to Execute Commands).

2. Updating Ubuntu Repo
```bash
sudo apt update
```

3. Downloading Epson L3150/L3160 Driver for Ubuntu (FOR SCANNER)

Download Ubuntu Epson L3150/L3160 Driver
[Here](https://download.ebz.epson.net/dsc/search/01/search/?OSC=LX) Epson L3150/L3160 Driver `.deb` 

Search for your printer model, example `L3150`.
<https://download.ebz.epson.net/dsc/search/01/search/?OSC=LX>

maybe this link can work too:
<https://support.epson.net/linux/en/epsonscan2.php>

4. Decompress and execute:
```bash
sudo ./install.sh
```

5. Open the app called: `Epson Scan 2`


## Part II 

Install the printer drivers.
1. Download the driver
`epson-inkjet-printer-escpr_1.7.17-1lsb3.2_amd64.deb` and `epson-printer-utility_1.1.1-1lsb3.2_amd64.deb`.

Go to Epson Support web and search for your printer model, example: `L3150`

<http://download.ebz.epson.net/dsc/search/01/search/?OSC=LX>


2. Install two .deb files (printer driver and utility software), you execute by double clic and press `Install` button.

3. Go to settings -> Printer -> Add.



## Source

<https://tutorialforlinux.com/2021/04/19/how-to-download-epson-esc-p-esc-p-r-for-gnu-linux/2/>
