---
layout: post
title: "How to reproduce a video with mp4 codecs"
#categories: github virtualbox
---

## Problem: 

When you play a video (`.mp4` format or extension) appears this error: 
"MPEG-4 ACC decoder, H.264 (Constrained Baseline Profile decoder are required to play the file, but are not installed"

## Solution:
To solve it, you can install packages using the Terminal.

### Step by step:

1. Open a Terminal by pressing `Ctrl` + `Alt` + `T`.
2. Install the packages needed:
```
sudo apt-get install ubuntu-restricted-extras
sudo apt-get install libavcodec58  ffmpeg
```

3. Log out and log in again.


## Source:

<https://askubuntu.com/questions/214421/how-to-install-the-mpeg-4-aac-decoder-and-the-h-264-decoder>
