

---
layout: post
title: How to cut a mp4 video
categories: tools video
---

## Problem: 

You have a video and just need cut a part and save!. 
You don't need to re-encode the video.

## Solution 1: Using `ffmpeg `in bash

```bash
INPUT="/media/rogelio/timemachine/curso-linux-gerardoalumno/sesion 06/Sesion 6.mp4"
OUTPUT="/media/rogelio/timemachine/curso-linux-gerardoalumno/sesion 06/output.mp4"

ffmpeg -i "$INPUT" -ss 00:27:43 -to 03:05:57 -vcodec copy -acodec copy "$OUTPUT"
```

## Solution 2: Using Kdenlive software

If you are in for the easy graphical interface, then there's actually a way to do this:

1. Start Kdenlive or start new empty project.
2. Drag your source video clip into the project bin.
3. Select your clip, so it gets shown in the clip monitor.
4. Use the clip monitor controls to play and pause, etc.
5. To set the start point: this is termed in "in" point by simply pressing the "I" key. A marker will appear on the time scale in the clip monitor.
6. To set the end point or "out" point: press the "O" key. A second marker appears and the region in between is highlighted.
7. Right click in the monitor and select "save region" (or "Extract zone" in version 22).
8. Enter new filename, click ok.
9. Your clip in the project bin will show a progress bar. Wait for it to disappear.

Source: 
<https://thediveo-e.blogspot.com/2013/09/trimming-video-files-lossless-using.html>\
<https://forum.kde.org/viewtopic.php?f=265&t=130552&p=459516#p459516>\


