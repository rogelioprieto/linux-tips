## Office suite

### LibreOffice

LibreOffice is a powerful and free office suite, a successor to OpenOffice(.org), used by millions of people around the world. Its clean interface and feature-rich tools help you unleash your creativity and enhance your productivity. LibreOffice includes several applications that make it the most versatile Free and Open Source office suite on the market: Writer (word processing), Calc (spreadsheets), Impress (presentations), Draw (vector graphics and flowcharts), Base (databases), and Math (formula editing).

1. Install:
```bash
sudo snap install libreoffice
```

2. Activate Ribbon style interface, Clic View `Menu` -> `User Interface`. Choose `Tabbed` option.
![](libreoffice-userinterface01.png)
![](libreoffice-userinterface02.png)


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
/home/rogelio/github/linux-tips/_posts/TODO/TODO-install-microsoft-fonts-ubuntu.md
```



## Text Editors

### ReText
A markdown editor with live preview capabilities.

```bash
sudo apt install retext

```

### VScodium
Website:  
<https://vscodium.com/#install>

1. Add the GPG key of the repository:
```bash
wget -qO - https://gitlab.com/paulcarroty/vscodium-deb-rpm-repo/-/raw/master/pub.gpg | gpg --dearmor | sudo dd of=/etc/apt/trusted.gpg.d/vscodium.gpg
```bash

2. Add the repository:
```bash
echo 'deb https://paulcarroty.gitlab.io/vscodium-deb-rpm-repo/debs/ vscodium main' | sudo tee --append /etc/apt/sources.list.d/vscodium.list
```

3. Update then install vscodium:

```bash
sudo apt update && sudo apt install codium 
```




## Web browsers

Firefox is installed in Ubuntu, if you want another web browser try Chromium (Google Chrome is based in Chromium). 
### Chromium
```bash
sudo apt-get install chromium-browser
```
## Chat clients

### WhatsDesk


### Franz

«Franz is your messaging app for WhatsApp, Facebook Messenger, Slack, Telegram and many many more.»

Multiplattform chat software available for Linux, Windows and MacOS. 

https://meetfranz.com/

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


## Pdf software

### Okular viewer
This allows you view and annotate pdfs.

1. Install using the snap package manager. Open a Terminal.
```bash
$ snap install okular
```

### Pdftk

pdftk is a command-line tool for working with PDF files. It is commonly used for client-side scripting or server-side processing of PDF files.

```bash
$ sudo snap install pdftk
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
## Music
### Lollypop
1. Install the app using the Terminal.
```bash
sudo apt-get install lollypop
```
2. Add music to the catalog.

Choose `Preferences->Music(tab)` and add your `music folder.`


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

```bash
sudo snap install shutter
```
<https://shutter-project.org/>


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






