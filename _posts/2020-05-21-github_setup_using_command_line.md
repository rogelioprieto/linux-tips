

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

## Initial steps.
### 1. First install ```git```. 
```
sudo apt install git
```

### 2. Tell to git who you are.
Set your username and email. _Note:_ insert your email account.

**Option a)** To set your account's identity.
```
git config --global user.email "myname@gmail.com"
git config --global user.name "rogelioprieto"
```

**Option b)** To set the identity only in this repository.
```
git config user.email "myname@gmail.com"
git config user.name "rogelioprieto"
```

### 3. Tell to git who you are.

Please tell me who you are.

Run

  git config --global user.email "you@example.com"
  git config --global user.name "Your Name"

to set your account's default identity.
Omit --global to set the identity only in this repository.

```
sudo apt install git
git config user.email "myname@gmail.com"
git config user.name "rogelioprieto"
```






### 4. Then, you should create a new folder  and go to this folder. In this example we'll create the folder ```test``` inside the  ```home``` folder.
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
```
git remote add origin https://github.com/rogelioprieto/test.git
git push -u origin master
```

## Option 3. Import code from another repository.
You can initialize this repository with code from a Subversion, Mercurial, or TFS project.

