# Customize Ubuntu 20.04

## Add new document

<https://rogelioprieto.github.io/linux-tips/2020/12/23/Add-New-Document-back-to-the-right-click-menu-in-Ubuntu-18.04-or-in-Ubuntu-20.04.html>

## More colors in gedit. Install a new theme

1. Download theme (a xml file)
2. Copy to `~/.local/share/gedit/styles`

<https://delightlylinux.wordpress.com/2015/03/25/gedit-themes/>

## gedit favourites themes

### One Dark theme

<https://unkertmedia.com/11-gedit-themes-you-must-try/>
<https://raw.githubusercontent.com/isdampe/gedit-gtk-one-dark-style-scheme/master/onedark.xml>

## dracula theme

<https://draculatheme.com/gedit>

### Install

1. Download the raw file:
```
wget https://raw.githubusercontent.com/dracula/gedit/master/dracula.xml
```

2. Move the file to gedit style's folder:
```
    mv dracula.xml $HOME/.local/share/gedit/styles/
```

3. Activate in Gedit's preferences dialog






## Customize ubuntu GUI

If you click on the icon of a running application, its window will be brought to focus. That’s fine. However, if you click on it, nothing happens. By default, clicking on the same icon won’t minimize the application.

Well, this is the behavior in modern desktop, but I don’t like it. I prefer that the application is minimized when I click on its icon for the second time.

```bash
gsettings set org.gnome.shell.extensions.dash-to-dock click-action 'minimize'
```


## Install a lightweight dock: Plank dock
```bash
sudo apt-get install plank
```

How to use Plank dock:
<https://www.linuxuprising.com/2019/12/a-guide-to-using-plank-dock-on-linux.html>


Custom LibreOffice. Export PDF but after that open the exported file.

<https://ask.libreoffice.org/t/writer-export-as-pdf-used-to-open-automatically-when-completed-but-not-any-more/74561>







