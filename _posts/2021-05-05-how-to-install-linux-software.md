---
layout: post
title: How to install linux software - my favs apps!
categories: linux
author: Rogelio Prieto Alvarado
date: May 05, 2021
---

Hi, this document contains the  software that I use in my Ubuntu 20.04 or Ubuntu 20.04 MATE to make the typical tasks.

I recommend this software because is my fav,  it's the software I use and I've installed in my computer.

The categories are:
- ![Writer](https://raw.githubusercontent.com/rogelioprieto/linux-tips/master/assets/icons/libreofficewriter_113234-32px.png)[Office suite](#office-suite)
- [Fonts](#fonts)
- [Text Editors](#text-editors)
- [Web browsers](#web-browsers)
- [Chat clients](#chat-clients)
- [FTP clients](#ftp-clients)
- [PDF software](#pdf-software)
- [Converter utilities](#converter-utilities)
- [LaTeX (TexLive base distribution)](#latex-texlive-base-distribution)
- [Music](#music)
- [Video](#video)
- [Images](#images)
- [Compression software](#compression-software)
- [Network tools](#network-tools)
- [Calendar or todo tasks apps](#calendar-or-todo-tasks-apps)
- [Video call or web conferences](#video-call-or-web-conferences)
- [For teaching](#for-teaching)


## Office suite

### LibreOffice

LibreOffice is a powerful and free office suite, a successor to OpenOffice(.org), used by millions of people around the world. Its clean interface and feature-rich tools help you unleash your creativity and enhance your productivity. LibreOffice includes several applications that make it the most versatile Free and Open Source office suite on the market: Writer (word processing), Calc (spreadsheets), Impress (presentations), Draw (vector graphics and flowcharts), Base (databases), and Math (formula editing).

1. Install:
```bash
sudo snap install libreoffice
```

2. Activate Ribbon style interface. Open the `LibreOffice Writer` application, clic View `Menu` -> `User Interface`. Choose `Tabbed` option, finally `Apply to All`.
![](https://raw.githubusercontent.com/rogelioprieto/linux-tips/master/_posts/linux-images/libreoffice-userinterface01.png)
![](https://raw.githubusercontent.com/rogelioprieto/linux-tips/master/_posts/linux-images/libreoffice-userinterface02.png)




## Fonts
### Microsoft fonts.

This package allows for easy installation of the Microsoft True Type Core Fonts for the Web including:

- Andale Mono
- Arial Black
- Arial (Bold, Italic, Bold Italic)
- Comic Sans MS (Bold)
- Courier New (Bold, Italic, Bold Italic)
- Georgia (Bold, Italic, Bold Italic)
- Impact
- Times New Roman (Bold, Italic, Bold Italic)
- Trebuchet (Bold, Italic, Bold Italic)
- Verdana (Bold, Italic, Bold Italic)
- Webdings

1. Install:
```bash
sudo apt install ttf-mscorefonts-installer
sudo fc-cache -vr
```

If you are interested and know more details about microsoft fonts and Linux, you can read:
[How to install microsoft fonts in Ubuntu - Manual](https://rogelioprieto.github.io/linux-tips/linux/2021/07/12/how-to-install-microsoft-fonts-ubuntu.html)

## Text Editors

### ReText
A markdown editor with live preview capabilities.

1. Install it!
```bash
sudo apt install retext
```
2. Improve visualization: clic in `Edit` Menu -> `Use webkit renderer`. This allows scroll sincronization between code and preview windows.

_Optional step:_\
Install aditional beatiful and useful style for preview window. This style was designed by [MikePeralta1](https://github.com/a-mt/retext-themes/tree/master/Github)
Copy these files to `~/.config/ReText project/` folder.
- [ReText.conf](https://raw.githubusercontent.com/rogelioprieto/linux-tips/master/_posts/retext-github-style/ReText.conf)
- [github.css](https://raw.githubusercontent.com/rogelioprieto/linux-tips/master/_posts/retext-github-style/github.css)

After that your preview will appears [like this](https://raw.githubusercontent.com/rogelioprieto/linux-tips/master/_posts/retext-github-style/preview.png).


### VScodium
Website:  
<https://vscodium.com/#install>


1. Add the GPG repository key:
```bash
wget -qO - https://gitlab.com/paulcarroty/vscodium-deb-rpm-repo/raw/master/pub.gpg | gpg --dearmor | sudo dd of=/usr/share/keyrings/vscodium-archive-keyring.gpg 
```


2. Add the repository:
```bash
echo 'deb [ signed-by=/usr/share/keyrings/vscodium-archive-keyring.gpg ] https://download.vscodium.com/debs vscodium main' | sudo tee /etc/apt/sources.list.d/vscodium.list 

```

3. Update then install vscodium:

```bash
sudo apt update && sudo apt install codium
```

### Sublime Text (Versión 4)
Website:\
<https://www.sublimetext.com/download>


1.  Install the GPG key:
```bash
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
```

2.  Ensure apt is set up to work with https sources: 
```bash
sudo apt-get install apt-transport-https
```

3. Add the repository:
```bash
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
```

3.  Update apt sources and install Sublime Text:

```bash
sudo apt-get update
sudo apt-get install sublime-text
```




## Web browsers

Firefox is installed in Ubuntu, if you want another web browser try Chromium (Google Chrome is based in Chromium). 
### Chromium
```bash
sudo apt-get install chromium-browser
```
## Chat clients

### WhatsDesk

If you need a WhatsApp client in Linux, there is not a official app.
WhatsDesk is a good option!

Install:

```bash
$ sudo snap install whatsdesk
```

Website:\
<https://snapcraft.io/whatsdesk>

### Franz

«Franz is your messaging app for WhatsApp, Facebook Messenger, Slack, Telegram and many many more.»

Multiplattform chat software available for Linux, Windows and MacOS. And have a simple TO DO tasks  manager too!. 

Website:\
<https://meetfranz.com/>

Steps:
1. Download the `.deb` file from <https://meetfranz.com/#download>
2. Install it!.     Right click on the DEB file (the file you have downloaded) and select Open With Software Install; or Doble clic in the file to open the Software Install.
    1. Clic in Install Button. 
    2. Installing software always requires administrator privileges. Enter your password to proceed with the installation. 


Option B, you can install manually typing this:
```bash
$ sudo dpkg -i franz_5.6.1_amd64.deb
```

in case of error: `dpkg: error processing package`
```bash
$ sudo apt install -f
```

## FTP clients

### Filezilla

```bash
$ sudo apt-get install filezilla
```


## PDF software

### Okular viewer
This allows you view and annotate pdfs.

1. Install using the snap package manager. Open a Terminal.
```bash
$ sudo snap install okular
```

### Pdftk

`pdftk` is a command-line tool for working with PDF files. It is commonly used for client-side scripting or server-side processing of PDF files.

Using `pdftk` is a tool to edit pdf files:  divide, combine, encrypt, decrypt, decompress, recompress and repair.


1. Install
```bash
$ sudo snap install pdftk
```

2. Examples of use:

a) Cut or extract some pages:
```bash
pdftk first.pdf cat 2 5 6 9 output 1.pdf 
```

b) Extract some pages from 2 files:
```bash
pdftk A=first.pdf B=second.pdf cat A2 A5 A6 A9 B6 B7 B15 B19 output final.pdf
```






## Converter utilities

### Pandoc

Execute this script:

/home/rogelio/Downloads/install-latex-pandoc/03_install-pandoc-2.14-ubuntu-v20.04.sh

### pandoc-crossref

pandoc-crossref is a pandoc filter for numbering figures, equations, tables and cross-references to them.

website:  
<https://github.com/lierdakil/pandoc-crossref>

To install pandoc-crossref filter:

1. Download  
<https://github.com/lierdakil/pandoc-crossref/releases/tag/v0.3.11.0a>

2. Install, execute this script:
/home/rogelio/Downloads/install-latex-pandoc/04_install-pandoc-crossref-Linux-ubuntu-v20.04.sh



    
## LaTeX (TexLive base distribution)

script:
/home/rogelio/Downloads/install-latex-pandoc/02_install-texlive-ubuntu-v20.04.sh

### TexStudio (LaTeX IDE)
website: <https://www.texstudio.org/>

```bash
sudo add-apt-repository ppa:sunderme/texstudio
sudo apt-get update
sudo apt-get install texstudio
```

### equalx - LaTeX Equation Editor 

```bash
sudo apt-get install equalx
```
(optional)
If you want to create a shortcut:
1. Open a new file in gedit and type:
```
#!/usr/bin/env xdg-open
[Desktop Entry]
Version=1.0
Type=Application
Terminal=false
Exec=equalx &
Name=equalx
Comment=edit and preview your latex equations
Icon=
```
Save the file as `equalx.desktop`

2. Set permissions. 
```
chmod +x something.desktop
```
and click right mouse button on that label and select `Allow launching`.

website: <https://equalx.sourceforge.io/>


### Jab Ref - Bibliography manager

JabRef is an open source bibliography reference manager. The native file format used by JabRef is BibTeX, the standard LaTeX bibliography format.

There are two versions available in repositories:

Install 5.3 version:

```bash
sudo snap install jabref
```

or install 3.8.2 version.
```bash
sudo apt-get install jabref
```

website: <https://www.jabref.org/>








## Music
### Lollypop
1. Install the app using the Terminal.
```bash
sudo apt-get install lollypop
```
2. Add music to the catalog.

Choose `Preferences->Music(tab)` and add your `music folder.`


### Pulse Effects
A graphical equalizer.

1. Install 
´´´bash
sudo apt install -y pulseeffects lsp-plugins

´´´

2. Search and open the application `PulseEffects` 



## Video 

### VLC player
website: <https://www.videolan.org/vlc/download-ubuntu.html>

```bash
sudo snap install vlc
```

## Images

### webp viewer

```bash
sudo apt-get install gthumb
```
Optional: Make gThumb the default application for WebP images in Ubuntu.

1. Select a webp file. Right clic->Properties->Open With (tab)->gThumb Image Viewer

### webp converter
Using command line to convert WebP images in Linux
1. Install WebP tools 
```bash
sudo apt-get install webp
```

2. Example 1. Convert jpeg to webp
```bash
cwebp -q 90 example.jpeg -o example.webp
```

3. Example 2. Convert webp to png
```bash
dwebp example.webp -o example.png
```

Another option is install "Save image as PNG"  
<https://chrome.google.com/webstore/detail/save-image-as-png/nkokmeaibnajheohncaamjggkanfbphi>



### shutter - The feature-rich screenshot tool

Website: <https://shutter-project.org/>

How to install:
```bash
sudo add-apt-repository ppa:shutter/ppa
sudo apt install shutter
sudo apt install gnome-web-photo
sudo apt install gir1.2-appindicator3-0.1
```



### ksnip

`Ksnip`  is a Qt5 screenshot tool for Linux which uses a minimalistic interface, but provides an extensive list of features.

From its New button dropdown, you can select to create a new screenshot of:

- a rectangular area
- the current screen
- all monitors (full screen)
- the active window

```bash
$ sudo snap install ksnip
```

<https://github.com/ksnip/ksnip/releases>


## Compression software

### Unrar

```bash
sudo apt-get install unrar
```

How to use, example:
```bash
unrar e ia.rar
```

## Network tools


### linssid

LinSSID is a simple graphical software that can be used to find the wireless networks available and channels. It is completely open source, written in C++ using Linux wireless tools, Qt5, and Qwt 6.1., and is similar to Inssider (MS Windows) in terms of look and functionality.

How to install:
```bash
sudo apt-get install linssid
```
<https://sourceforge.net/projects/linssid/>


## Calendar or todo tasks apps

### Todoist
"The best to-do list app right now" - The Verge

`Todoist` is used by 20 million people to organize, plan, and collaborate on projects, both big and small.

Use `Todoist` to:

- Capture and organize tasks the moment they pop into your head.
- Remember deadlines with reminders and due dates.
- Build lasting habits with recurring due dates like "every Monday".
- Collaborate on projects by assigning tasks to others.
- Prioritize your tasks with priority levels.
- Track your progress with personalized productivity trends.
- Integrate your tools like Gmail, Google Calendar, Slack, Amazon Alexa, and more.

Available on any device, `Todoist` will quickly become your hub for getting work and life organized.

Happy organizing!

How to install:
```bash
sudo snap install todoist
```
Source:\
<https://todoist.com/es/downloads>


## Video call or web conferences

### OBS Studio
Free and open source software for video recording and live streaming.

OBS Studio allows you to use virtual background (replace your background), add captions or images. You can stream your screen too.

How to install:
```
sudo apt install ffmpeg
sudo add-apt-repository ppa:obsproject/obs-studio
sudo apt install obs-studio
```
After install OBS Studio. You need to install the virtual cam:\
```
sudo apt install linux-headers-$(uname -r) v4l2loopback-dkms
```
The virtual cam will allow you to use your webcam in a webconference software: Google Meet, Zoom, etc.

website:\
<https://obsproject.com/es/download>


## For teaching

### Open Board
Interactive whiteboard for schools and universities. For Windows, macOS and Linux.

Source:\
<https://openboard.ch/index.en.html>
