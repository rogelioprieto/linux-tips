# How to install Office2013 using PlayOnLinux in Ubuntu 20.04

## Solution: 

1. Install PlayOnLinux
```bash
sudo apt-get install  playonlinux 
```

2. Install winbind
```bash
sudo apt-get install winbind
```
3. Install Office 2013.

Open PlayOnLinux. Clic in ```Install``` -> Type ```office``` and clic ```Office 2013```. Follow the steps (incluiding select the .exe  installation file)

##  PlayOnLinux is not installing MS Core Fonts, Ubuntu 

## The POL Way

Normally the Microsoft Core Fonts can be installed like this:

- Click `Configure`
- Select the prefix where you want the fonts installed 
- Tab `Install components`
- Select `Microsoft Core Fonts` from the list and click `Install`

## Manually

However, if for some reason this doesn't install the fonts, it's still possible to do that manually.
First install the `ttf-mscorefonts-installer` package:

```$ sudo apt install ttf-mscorefonts-installer```

Note the prefix name:
```ls ~/.PlayOnLinux/wineprefix```

And replace `yourprefix` in the command with the one you want:

```$ cp /usr/share/fonts/truetype/msttcorefonts/* ~/.PlayOnLinux/wineprefix/yourprefix/drive_c/windows/Fonts```

Now we have the core fonts in place. We can remove the package:

```$ sudo apt purge ttf-mscorefonts-installer```

## Source:
<https://gist.github.com/ibrahimtuzlak0295/2a66981f99f25e08cb2039df53391b05>
<https://www.solvetic.com/tutoriales/article/3361-como-instalar-microsoft-office-2013-en-linux/>
