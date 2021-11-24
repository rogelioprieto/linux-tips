---
layout: post
title: How to install ping tool in Ubuntu 20.04
# categories: github virtualbox
---

## Problem: 
I want to use ping command to know if a computer/server is online.


## Solution:
To solve it, you should install ping utility.


### Step by step:

1. Verify if ping is installed:
```ping -V```

2.  The most of linux distributions ping is installed by default. You can verify it, by executing the following command:

```apt-get update && apt-get install -y iputils-ping```


3. Use the ping command, example:
```ping google.com```


## Source:
<https://www.hostinger.mx/tutoriales/comando-ping-linux#Como-instalar-el-comando-Ping-en-Linux>
<https://www.devmanuals.net/install/ubuntu/ubuntu-12-04-lts-precise-pangolin/install-iputils-ping.html>  

