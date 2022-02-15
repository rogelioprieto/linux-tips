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
- [![Writer](https://raw.githubusercontent.com/rogelioprieto/linux-tips/master/assets/icons/libreofficewriter_113234-32px.png) Office suite](#office-suite)
- [![Fonts](https://raw.githubusercontent.com/rogelioprieto/linux-tips/master/assets/icons/fonts-32px.png) Fonts](#fonts)
- [![Text Editors](https://raw.githubusercontent.com/rogelioprieto/linux-tips/master/assets/icons/text-editor-32px.png) Text Editors](#text-editors)
- [![Web browsers](https://raw.githubusercontent.com/rogelioprieto/linux-tips/master/assets/icons/web-browser-32px.png) Web browsers](#web-browsers)
- [![Chat clients](https://raw.githubusercontent.com/rogelioprieto/linux-tips/master/assets/icons/chat-client-32px.png) Chat clients](#chat-clients)
- [![FTP clients](https://raw.githubusercontent.com/rogelioprieto/linux-tips/master/assets/icons/ftp-32px.png) FTP clients](#ftp-clients)
- [![PDF software](https://raw.githubusercontent.com/rogelioprieto/linux-tips/master/assets/icons/pdf-file-32px.png) PDF software](#pdf-software)
- [![Converter utilities](https://raw.githubusercontent.com/rogelioprieto/linux-tips/master/assets/icons/convert-32px.png) Converter utilities](#converter-utilities)
- [![LaTeX](https://raw.githubusercontent.com/rogelioprieto/linux-tips/master/assets/icons/tex-icon-32px.png) LaTeX (TexLive base distribution)](#latex-texlive-base-distribution)
- [![Music](https://raw.githubusercontent.com/rogelioprieto/linux-tips/master/assets/icons/music-note32px.png) Music](#music)
- [![Video](https://raw.githubusercontent.com/rogelioprieto/linux-tips/master/assets/icons/video-play-32px.png) Video](#video)
- [![Images](https://raw.githubusercontent.com/rogelioprieto/linux-tips/master/assets/icons/image-32px.png) Images](#images)
- [![Compression software](https://raw.githubusercontent.com/rogelioprieto/linux-tips/master/assets/icons/compression-32px.png) Compression software](#compression-software)
- [![Network tools](https://raw.githubusercontent.com/rogelioprieto/linux-tips/master/assets/icons/network-32px.png) Network tools](#network-tools)
- [![Calendar or todo tasks apps](https://raw.githubusercontent.com/rogelioprieto/linux-tips/master/assets/icons/calendar-32px.png) Calendar or todo tasks apps](#calendar-or-todo-tasks-apps)
- [![Video call or web conferences](https://raw.githubusercontent.com/rogelioprieto/linux-tips/master/assets/icons/videocall-32px.png) Video call or web conferences](#video-call-or-web-conferences)
- [![For teaching](https://raw.githubusercontent.com/rogelioprieto/linux-tips/master/assets/icons/teacher-class-32px.png) For teaching](#for-teaching)


[![↑](https://raw.githubusercontent.com/rogelioprieto/linux-tips/master/assets/icons/up-arrow-32px.png) Back to top](#)

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





[![↑](https://raw.githubusercontent.com/rogelioprieto/linux-tips/master/assets/icons/up-arrow-32px.png) Back to top](#)


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

[![↑](https://raw.githubusercontent.com/rogelioprieto/linux-tips/master/assets/icons/up-arrow-32px.png) Back to top](#)
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


### Remarkable
It's a markdown editor. It's good but now their "live preview" feature is ⚠️NOT working in Ubuntu 20.04.
website: <https://remarkableapp.github.io/>

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




[![↑](https://raw.githubusercontent.com/rogelioprieto/linux-tips/master/assets/icons/up-arrow-32px.png) Back to top](#)
## Web browsers

Firefox is installed in Ubuntu, if you want another web browser try Chromium (Google Chrome is based in Chromium). 
### Chromium
```bash
sudo apt-get install chromium-browser
```
[![↑](https://raw.githubusercontent.com/rogelioprieto/linux-tips/master/assets/icons/up-arrow-32px.png) Back to top](#)
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

[![↑](https://raw.githubusercontent.com/rogelioprieto/linux-tips/master/assets/icons/up-arrow-32px.png) Back to top](#)
## FTP clients

### Filezilla

```bash
$ sudo apt-get install filezilla
```


[![↑](https://raw.githubusercontent.com/rogelioprieto/linux-tips/master/assets/icons/up-arrow-32px.png) Back to top](#)
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






[![↑](https://raw.githubusercontent.com/rogelioprieto/linux-tips/master/assets/icons/up-arrow-32px.png) Back to top](#)
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



    
[![↑](https://raw.githubusercontent.com/rogelioprieto/linux-tips/master/assets/icons/up-arrow-32px.png) Back to top](#)
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








[![↑](https://raw.githubusercontent.com/rogelioprieto/linux-tips/master/assets/icons/up-arrow-32px.png) Back to top](#)
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



[![↑](https://raw.githubusercontent.com/rogelioprieto/linux-tips/master/assets/icons/up-arrow-32px.png) Back to top](#)
## Video 

### VLC player
website: <https://www.videolan.org/vlc/download-ubuntu.html>

```bash
sudo snap install vlc
```

[![↑](https://raw.githubusercontent.com/rogelioprieto/linux-tips/master/assets/icons/up-arrow-32px.png) Back to top](#)
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


[![↑](https://raw.githubusercontent.com/rogelioprieto/linux-tips/master/assets/icons/up-arrow-32px.png) Back to top](#)
## Compression software

### Unrar

```bash
sudo apt-get install unrar
```

How to use, example:
```bash
unrar e ia.rar
```

[![↑](https://raw.githubusercontent.com/rogelioprieto/linux-tips/master/assets/icons/up-arrow-32px.png) Back to top](#)
## Network tools


### linssid

LinSSID is a simple graphical software that can be used to find the wireless networks available and channels. It is completely open source, written in C++ using Linux wireless tools, Qt5, and Qwt 6.1., and is similar to Inssider (MS Windows) in terms of look and functionality.

How to install:
```bash
sudo apt-get install linssid
```
<https://sourceforge.net/projects/linssid/>


[![↑](https://raw.githubusercontent.com/rogelioprieto/linux-tips/master/assets/icons/up-arrow-32px.png) Back to top](#)
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


[![↑](https://raw.githubusercontent.com/rogelioprieto/linux-tips/master/assets/icons/up-arrow-32px.png) Back to top](#)
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


[![↑](https://raw.githubusercontent.com/rogelioprieto/linux-tips/master/assets/icons/up-arrow-32px.png) Back to top](#)
## For teaching

### Open Board
Interactive whiteboard for schools and universities. For Windows, macOS and Linux.

website:\
<https://openboard.ch/index.en.html>


Credits:\
LibreOffice icon provided by [icons-icons.com](https://icon-icons.com/es/icono/libreoffice-escritor/113234) in the Macaron pack.\
Icons made by [Freepik](https://www.flaticon.com/authors/freepik) from [www.flaticon.com](https://www.flaticon.com/)\
Icons made by [Good Ware](https://www.flaticon.com/authors/good-ware) from [www.flaticon.com]( https://www.flaticon.com/)\
<div>Icons made by <a href="https://www.freepik.com" title="Freepik">Freepik</a> from <a href="https://www.flaticon.com/" title="Flaticon">www.flaticon.com</a></div>

<div>Icons made by <a href="https://www.flaticon.com/authors/photo3idea-studio" title="photo3idea_studio">photo3idea_studio</a> from <a href="https://www.flaticon.com/" title="Flaticon">www.flaticon.com</a></div>

TeX icon provided by [Mart](https://iconarchive.com/artist/mart.html )  from [Icon Archive](https://iconarchive.com/show/glaze-icons-by-mart/tex-icon.html).

<div>Icons made by <a href="https://www.flaticon.com/authors/bingge-liu" title="Bingge Liu">Bingge Liu</a> from <a href="https://www.flaticon.com/" title="Flaticon">www.flaticon.com</a></div>
<div>Icons made by <a href="https://www.flaticon.com/authors/surang" title="surang">surang</a> from <a href="https://www.flaticon.com/" title="Flaticon">www.flaticon.com</a></div>
<div>Icons made by <a href="https://www.flaticon.com/authors/lakonicon" title="lakonicon">lakonicon</a> from <a href="https://www.flaticon.com/" title="Flaticon">www.flaticon.com</a></div>
<div>Icons made by <a href="https://www.flaticon.com/authors/th-studio" title="th studio">th studio</a> from <a href="https://www.flaticon.com/" title="Flaticon">www.flaticon.com</a></div>
