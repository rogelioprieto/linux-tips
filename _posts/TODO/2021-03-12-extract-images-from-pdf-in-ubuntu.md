
# Extract Images from a PDF File in Linux

## How to extract the images from a PDF file in Linux?


## Problem:
You have a pdf file and need to extract images from it.

## Solution:
You may use the pdfimages tool.

To output jpg images from a PDF ```./a.pdf```, run
```bash
pdfimages -j ./a.pdf ./images
```

```./images``` is the output images’ prefix. The images in ```./a.pdf``` will be extracted and saved as ```./images-nnn.jpg```.

```-j``` option make pdfimages generate JPEG files.


## Reference:
<https://www.systutorials.com/how-to-extract-images-from-a-pdf-file-in-linux/>
