---
layout: post
title: "My sound card is recognized but no sound"
categories: support
---


## Problem

I have installed a sound card, but I can't sound any sound, or I hear sound but not in all speakers.

## Solution

To solve it, try first to review if your volume for all speakers is right.

### Step by step

1. Open a `Terminal` and execute the command `alsamixer`\

    If you need to install `alsamixer`, you can type:\
    `sudo apt-get install alsa-utils`

2. You can use `F6` to choose your sound card. Set volume for all speakers.

![](master/_posts/images-all/alsamixer-soundcard.png)

If your speakers not still working, try this recommended steps:\
<https://delightlylinux.wordpress.com/2017/01/13/experience-better-sound-in-linux-with-the-asus-xonar-dx-sound-card/>


## Source

<https://askubuntu.com/questions/598759/asus-xonar-dgx-recognized-but-no-sound>
<https://www.muylinux.com/2019/04/15/calidad-sonido-linux-asus-xonar-essence/>
