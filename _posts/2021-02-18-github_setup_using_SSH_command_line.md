---
layout: post
title: "Why is Git always asking for my password? How to setup GitHub to SSH access."
categories: github
---


## Why is Git always asking for my password? How to setup GitHub to SSH access.


### updated July 2021
![file-icon-32px](https://raw.githubusercontent.com/rogelioprieto/linux-tips/master/assets/icons/menu-32px.png)
1. How to Install Git on Ubuntu 20.04  
<https://linuxize.com/post/how-to-install-git-on-ubuntu-20-04/>
```bash
sudo apt update
sudo apt install git
git --version
git config --global user.name "Your Name"
git config --global user.email "youremail@yourdomain.com"
git config --list
cat ~/.gitconfig
```
2. Connecting to GitHub with SSH. <https://docs.github.com/en/github/authenticating-to-github/connecting-to-github-with-ssh>
3. Checking for existing SSH keys.<https://docs.github.com/en/github/authenticating-to-github/connecting-to-github-with-ssh/checking-for-existing-ssh-keys>
4. Generating a new SSH key and adding it to the ssh-agent <https://docs.github.com/en/github/authenticating-to-github/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent>
5. Adding a new SSH key to your GitHub account <https://docs.github.com/en/github/authenticating-to-github/connecting-to-github-with-ssh/adding-a-new-ssh-key-to-your-github-account>
6. SSH Keys <https://github.com/settings/keys>
7. Testing your SSH connection. <https://docs.github.com/en/github/authenticating-to-github/connecting-to-github-with-ssh/testing-your-ssh-connection>

### .bash_history July 2021

```bash
sudo apt update
sudo apt install git
git --version
git config --global user.name "rogelioprieto"
git config --global user.email "rogelioprieto@gmail.com"
git config --list
ls -al ~/.ssh
ssh-keygen -t ed25519 -C "rogelioprieto@gmail.com"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ed25519
gh ssh-key add ~/.ssh/id_ed25519.pub
sudo apt-get install xclip
xclip -selection clipboard < ~/.ssh/id_ed25519.pub
#Test ssh connection
ssh -T git@github.com
#make dir and clone
mkdir ~/github
cd github
cd /home/rogelio/github/
git clone git@github.com:rogelioprieto/linux-tips.git
git status
ls -la
cd linux-tips
git status
git add .
git status
git commit -m "added minor changes"
git push -u origin master
git status
```


### OLD VERSION February 2021


1. <https://docs.github.com/en/github/using-git/why-is-git-always-asking-for-my-password>

2. <https://docs.github.com/en/github/using-git/caching-your-github-credentials-in-git>

3. <https://docs.github.com/en/github/authenticating-to-github/connecting-to-github-with-ssh>

Another links:

<https://git-scm.com/book/en/v2/Customizing-Git-Git-Configuration>

<https://docs.github.com/en/github/using-git/changing-a-remotes-url#switching-remote-urls-from-https-to-ssh>


