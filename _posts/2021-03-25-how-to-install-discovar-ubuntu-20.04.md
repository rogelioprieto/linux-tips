---
layout: post
title: How to install Discovar in Ubuntu 20.04?
categories: bioinformatics
author: Rogelio Prieto Alvarado
date: March 25, 2021
---

## Problem:
You compiled [Discovar DE NOVO](https://software.broadinstitute.org/software/discovar/blog/?page_id=14){:target="_blank"} using ```make all```, you get this error:

```bash
make: *** [Makefile:288: install-recursive] Error 1
```


## Solution:
Compile using ```gcc 4.x``` version.


### Step by step:

1. Install requirements:
```bash
$ sudo apt-get install libjemalloc-dev
$ sudo apt-get install zlib1g-dev
$ sudo apt install build-essential
```

2. Install samtools (required if using bam files)
```bash
$ sudo apt-get install samtools
```


3. Add a repository. Open the file:
```bash
$ sudo gedit /etc/apt/sources.list
```

4. Add these lines, preferably at the end of the file.
```bash
#RPA ADDED
deb http://us.archive.ubuntu.com/ubuntu bionic main universe
```

5. Install gcc and g++ 4.8 version. Open a Terminal and execute:
```bash
$ sudo apt upgrade && apt install gcc-4.8 g++-4.8
```

6. Configure multiple gcc versions.
```bash
$ sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-4.8 40 \
--slave /usr/bin/g++ g++ /usr/bin/g++-4.8
$ sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-9 90 \
--slave /usr/bin/g++ g++ /usr/bin/g++-9 
```

7. Choose ```gcc-4.8``` version. Type in Terminal:
```bash
$ sudo update-alternatives --config gcc
```

8. Install the ```libieee``` library.
```bash
$ sudo ln -sv /usr/lib/x86_64-linux-gnu/libieee1284.so.3.2.2 \
/usr/lib/x86_64-linux-gnu/libieee.so
$ sudo ln -sv /usr/lib/x86_64-linux-gnu/libieee1284.so.3.2.2 \
/usr/lib/x86_64-linux-gnu/libieee1284.so.3
$ sudo ldconfig
```

9. Install ```Discovar```. Open the ```INSTALL```file and follow the instructions. A short way:
```bash
tar xzf discovardenovo-NNNNN.tar.gz
cd discovardenovo-52488/
./configure
make all
make install
```
where ```NNNNN``` is the Discovar version, in this example 52488 is the version.

10. Delete the repository url. Open the file and delete the last two lines added previously.
```bash
$ sudo gedit /etc/apt/sources.list
``` 
This step is neccesary for stopping using a previous Ubuntu repository version. 

## Source:
- I solved this problem based in Discovar forum user group:

<https://groups.google.com/a/broadinstitute.org/g/discovar-user-forum>

searching this: _Makefile:288 install-recursive_

<https://groups.google.com/u/1/a/broadinstitute.org/g/discovar-user-forum/c/RWFyF11-cjc/m/VLwHBQqeCAAJ>

- Install gcc in Ubuntu 20.04

<https://linuxize.com/post/how-to-install-gcc-on-ubuntu-20-04/>

- Discovar - manual and faq

<https://software.broadinstitute.org/software/discovar/blog/?page_id=19>

- How to compile with gcc

<https://stackoverflow.com/questions/27390078/gcc-compiling-c-code-undefined-reference-to-operator-newunsigned-long-lon/27390293>

- Linux: C/C++ Libraries

<http://chenweixiang.github.io/2015/12/18/linux-series-05-libraries.html>

- Discovar de novo manual

<https://banana-slug.soe.ucsc.edu/contributors:team_5:discovar_de_novo_manual>