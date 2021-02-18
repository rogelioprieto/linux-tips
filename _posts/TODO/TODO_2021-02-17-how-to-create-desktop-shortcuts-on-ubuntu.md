# How to create desktop shortcuts on Ubuntu

##Problem: 
I have installed a program or software but doesn't apears in launch bar (or launch menu).

## Solution:
1. Create a new .desktop file. In an editor, type:
```bash
[Desktop Entry]
Version=1.1
Name=EqualX
GenericName=LaTeX Equation Editor
Comment=EqualX is just a graphical interface to latex and a bunch of conversion programs for aiding you write equations faster in latex and generate export files to use them in other applications.
Exec=/usr/bin/equalx
Path=/home/rogelioprieto
Icon=/home/rogelioprieto/Downloads/equalx_logo.png
Terminal=false
Type=Application
Categories=Office
```
Explanation: <https://www.howtogeek.com/445303/how-to-create-desktop-shortcuts-on-ubuntu/>



2. Double clic in the file to execute. It will appear a alert windows,  Clic the "Trust and Launch” button'.

3. Copying the .desktop File To the Applications Folder
```bash
cp ./myfile.desktop ~/.local/share/applications
```
