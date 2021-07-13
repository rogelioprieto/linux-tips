# I got an error when trying to install a latex package trough tlmgr on ubuntu 20.04, verify_checksum: -5

## Problem:
I tried to install a LaTeX package in texlive 2019 in Ubuntu 20.04.

## Solution:

The short solution is: this error is because you're using wrong repository version. Your TexLive 2019 is trying to use a TexLive 2020 ftp repository.

You should change to the right (correct) repository. Type this commands in a Terminal:

1. Type this commands in a Terminal to change de default repository
```bash
tlmgr repository add ftp://tug.org/historic/systems/texlive/2019/tlnet-final
tlmgr repository list
tlmgr repository remove http://mirror.ctan.org/systems/texlive/tlnet
tlmgr option repository ftp://tug.org/historic/systems/texlive/2019/tlnet-final 
```
2. Install the LaTeX package you want using this: 
```bash
tlmgr --verify-repo=none install beamer
```
in this example I installed ```beamer``` package succesfully using the ```--verify-repo=none``` parameter.

If you omit the parameter you would get this error: ```tlmgr: Local TeX Live (2019) is older than remote repository (2020)```. This error is solved changing the right repository for TexLive 2019. 

**NOTE:** if you want to install the package for all users just type ```sudo``` at the beginning of each instruction.
