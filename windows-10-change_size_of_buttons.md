# Change size of buttons (close, minimize, etc) in Windows 10

## Problem: 
In small screens the  size of caption buttons is so small and it's difficult to read.

## Solution:
Increase the size using the registry editor.

Using larger caption buttons will also increase the height of title bars.

## Step by step

1. Open Registry Editor (```regedit.exe```). You can press ```Windows key + R``` and type ```regedit.exe```.
2. Navigate to the key below in the left pane of Registry Editor. (see screenshot below)

```HKEY_CURRENT_USER\Control Panel\Desktop\WindowMetrics```

3. In the left pane choose ```WindowsMetrics``` key. Then in the right pane of the ```WindowsMetrics``` key, double click/tap on the ```CaptionHeight``` string value to modify it.
4. Enter a value between ```-120``` (smaller) to ```-1500``` (larger) for what you want, I prefer ```-420``` value, and click/tap on ```OK```.


```-330``` is the default value. ```-420``` is the result of ```-15 x 28 px= -420```, then buttons will set 28px size.

The value uses the following formula: ```-15 x size``` (the size you want in pixels).

For example: -15 x 22 = -330

5. When finished, close Registry Editor.


## Source:
<https://www.tenforums.com/tutorials/79900-change-size-caption-buttons-windows-10-a.html>

