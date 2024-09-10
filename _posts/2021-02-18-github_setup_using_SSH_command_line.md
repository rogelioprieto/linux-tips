---
layout: post
title: "Why is Git always asking for my password? How to setup GitHub to SSH access."
categories: github
---


## Problem 

Why is Git always asking for my password? How to setup GitHub to SSH access.


## Solution 

Setup your github account using the Terminal and SSH.

### Step by step

1. How to Install Git on Ubuntu 22.04 and 24.04
```bash
sudo apt update
sudo apt install git
git --version
```
2. Tell to git who you are.
```bash
git config --global user.name "rogelioprieto"
git config --global user.email "rogelioprieto@googlemail.com"
git config --list
cat ~/.gitconfig
```
3. Generate a new SSH key 
```bash
ls -al ~/.ssh
ssh-keygen -t ed25519 -C "rogelioprieto@googlemail.com"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ed25519
gh ssh-key add ~/.ssh/id_ed25519.pub
```
4.  Copy the new SSH key into clipboard
```bash
#copy the ssh key into clipboard
sudo apt-get install xclip
xclip -selection clipboard < ~/.ssh/id_ed25519.pub
```
4.  Paste the new SSH key to your GitHub account:  <https://docs.github.com/en/authentication/connecting-to-github-with-ssh/adding-a-new-ssh-key-to-your-github-account>
5. Connect to and clone the repository
```bash
#Test ssh connection
ssh -T git@github.com
#make dir and clone
mkdir ~/github
cd ~/github/
git clone git@github.com:rogelioprieto/linux-tips.git
git status
ls -la
cd linux-tips
git status
```
6. Finally, you can edit or create a file and push into the repository
```bash
git add .
git status
git commit -m "added minor changes"
git push -u origin master
git status
```

    or you can use these commands in one instruction/line:
    ```bash
    git add . && git commit -m "added minor changes" && git push -u origin master
    ```

## Source:
- Install git on Ubuntu 20.04 <https://linuxize.com/post/how-to-install-git-on-ubuntu-20-04/>
- Connecting to GitHub with SSH. <https://docs.github.com/en/github/authenticating-to-github/connecting-to-github-with-ssh>
-  Checking for existing SSH keys.<https://docs.github.com/en/github/authenticating-to-github/connecting-to-github-with-ssh/checking-for-existing-ssh-keys>
- Generating a new SSH key and adding it to the ssh-agent <https://docs.github.com/en/github/authenticating-to-github/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent>
- Adding a new SSH key to your GitHub account <https://docs.github.com/en/github/authenticating-to-github/connecting-to-github-with-ssh/adding-a-new-ssh-key-to-your-github-account>
- SSH Keys <https://github.com/settings/keys>
- Testing your SSH connection. <https://docs.github.com/en/github/authenticating-to-github/connecting-to-github-with-ssh/testing-your-ssh-connection>
- <https://docs.github.com/en/github/using-git/why-is-git-always-asking-for-my-password>
- <https://docs.github.com/en/github/using-git/caching-your-github-credentials-in-git>
- <https://docs.github.com/en/github/authenticating-to-github/connecting-to-github-with-ssh>


Another links:
- <https://git-scm.com/book/en/v2/Customizing-Git-Git-Configuration>
- <https://docs.github.com/en/github/using-git/changing-a-remotes-url#switching-remote-urls-from-https-to-ssh>


