---
layout: post
title: How to merge multiple videos
categories: tools video
---

## Problem: 

You have a 2 or more videos and need to merge into one.
You don't need to re-encode the video.

## Solution 1: Using ffmpeg in bash

### Step 1. Create a list file with their paths
Example, create the file `list.txt`:
```bash
file 'uno.mp4'
file 'dos.mp4'
```

or generate the file manually:

```bash
MYLIST=list.txt
find *.mp4 -maxdepth 1 ! -name $MYLIST -type f -print0 | xargs -0 -I {} echo "file '{}'" >> $MYLIST
```

### Step 2. Merge the video files

```bash
ffmpeg -f concat -safe 0 -i list.txt -c copy output.mp4
```


## Source:

<https://stackoverflow.com/questions/7333232/how-to-concatenate-two-mp4-files-using-ffmpeg>  
<https://trac.ffmpeg.org/wiki/Concatenate>
