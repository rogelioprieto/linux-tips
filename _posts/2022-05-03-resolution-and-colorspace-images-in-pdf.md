---
layout: post
title: Get resolution and color space from images inside a pdf!
categories: github virtualbox
---

## Problem: 

You need to know the resolution and color space for images incrustated (inside) in a pdf file.


## Solution:
To solve it, you can use command `pdfimages` in the Terminal.

### Step by step:

1. Open the Terminal, type Ctrl+Alt+T
2. Type the command, specify the pdf filename.
```
pdfimages -list myfile.pdf
```
you'll get a list with the images and their properties, like this:
```
pdfimages -list myfile.pdf
```
you'll get this output table:
```
page   num  type   width height color comp bpc  enc interp  object ID x-ppi y-ppi size ratio
--------------------------------------------------------------------------------------------
   1     0 image     240   240  rgb     3   8  image  no       233  0   180   180 8088B 4.7%
  13     4 image     209   177  rgb     3   8  jpeg   no       415  0   219   219 6412B 5.8%
```

**Plus 01!**

Get the color space from a pdf file
```
identify -verbose myfile.pdf
```

**Plus 02**

Get the color space from a image file (jpg or png)
```
identify -verbose myimage.jpg | grep Colorspace
```


## Source:

<https://unix.stackexchange.com/questions/316760/what-are-gnu-linux-tools-for-checking-pdf-documents-before-publishing>\
<https://stackoverflow.com/questions/6241282/converting-pdf-to-cmyk-with-identify-recognizing-cmyk>
