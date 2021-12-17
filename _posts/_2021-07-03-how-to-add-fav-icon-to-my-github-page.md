---
layout: post
title: "write here the title!!!!"
categories: github virtualbox
---

## Problem: 

I want to specify a favicon to my github page. 
Set a favicon can be nice. How can I do that?

## Solution:
To specify a favicon you need to create it and setup your github page.

### Step by step:

1. Create your favicon using an online tool:\
<https://realfavicongenerator.net/>
Please specify  the path `/assets/images` in *Favicon Generator Options*. This is a recomendation at the Jekyll documentation.
 

Download the zip file.

2.  Unpack the file into the `assets/images` directory of your Jekyll site:
```
$ cd assets/images
$ unzip /path/to/favicon_package_v0.16.zip   
```
3. Verify is the file `_includes/head/custom-head.html`  exists. If not exists create the directory and file:  
```
mkdir -p _includes/head
cd _includes/head
touch custom-head.html
```
After that open and paste the lines provided by `realfavicongenerator.net`. These lines contains `<link rel=...` and `<meta name=` tags.




## Source:
More detailed explanation at:\
<https://ptc-it.de/add-favicon-to-mm-jekyll-site/>




