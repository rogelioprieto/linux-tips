---
layout: post
title: How to merge multiple videos
categories: tools video
---

## Problem: 

You have a 2 or more videos and need to merge into one.
You don't need to re-encode the video.

## Solution 1: Using ffmpeg in bash

### Step 1. Create a list file with their paths, example:
```bash
file 'uno.mp4'
file 'dos.mp4'
```

or generate the file manually:

```bash
MYLIST=list.txt; ls -I $MYLIST *.mp4 | xargs -I {} echo "file '{}'" >> $MYLIST
```

### Step 2. Merge the video files

```bash
ffmpeg -f concat -safe 0 -i list.txt -c copy output.mp4
```

⚠️ **Note:** If you need to use a more precise unit, less than a second, you need to reencode the video (not copy vcodec or acodec). Example cut video from 0.5 to 12 seconds:

## Source:

<https://thediveo-e.blogspot.com/2013/09/trimming-video-files-lossless-using.html>  
<https://forum.kde.org/viewtopic.php?f=265&t=130552&p=459516#p459516>
