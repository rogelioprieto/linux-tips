

---
layout: post
title: "Setup a git repository using command line."
categories: github
---

# Setup a git repository using command line.

You can learn how to setup your github respoitory using a command line.
**Option 1.** Create a new repository.
**Option 2.** Push an existing repository.
**Option 3.** Import code from another repository.

*Note:* in this example I use this user and repository name, you should replace them for yours.
user: ```rogelioprieto```
repository name: ```test```

## Initial step.
You should create a new folder  and go to this folder. In this example we'll create this folder at ```home```.
```
mkdir ~/test
cd ~/test
```


## Option 1. Create a new repository on the command line.
```
echo "# test" >> README.md
git init
git add README.md
git commit -m "first commit"
git remote add origin https://github.com/rogelioprieto/test.git
git push -u origin master
```

## Option 2. Push an existing repository from the command line.
git remote add origin https://github.com/rogelioprieto/test.git
git push -u origin master

## Option 3. Import code from another repository.
You can initialize this repository with code from a Subversion, Mercurial, or TFS project.

