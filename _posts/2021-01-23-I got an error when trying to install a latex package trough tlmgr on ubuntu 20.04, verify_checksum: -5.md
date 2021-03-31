# I got an error when trying to install a latex package trough tlmgr on ubuntu 20.04, verify_checksum: -5

## Problem:
I tried to install a LaTeX package in texlive 2019 in Ubuntu 20.04.

## Solution:
```tlmgr: Local TeX Live (2019) is older than remote repository (2020)```. This error is solved changing the right repository for TexLive 2019. 

1. Type this commands in a Terminal to change de default repository
```bash
tlmgr repository add tug.org/historic/systems/texlive/2019/tlnet-final
tlmgr repository list
tlmgr repository remove mirror.ctan.org/systems/texlive/tlnet tlmgr option repository tug.org/historic/systems/texlive/2019/tlnet-final 
```
2. Install the LaTeX package you want using this: 
```bash
tlmgr --verify-repo=none install beamer
```
in this example I installed ```beamer``` package succesfully using the ```--verify-repo=none``` parameter.

