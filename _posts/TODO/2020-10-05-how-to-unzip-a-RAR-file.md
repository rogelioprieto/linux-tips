# How to unzip RAR on Linux

## Problem:
Linux can't unzip a RAR file in a native way. This is because RAR is a propietary compressed format.
**RAR son las siglas de Roshal Archive y es un formato propietario con un algoritmo de compresión sin pérdida.REVIEW OR CONFIRM THIS**

## Solution:
Install an application and "unrar" the file.
The next time use zip or tar or tar.gz compressed formats (these are free formats) not rar format (this is propietary).

### Step by step
1. Download and install the package using the ```Terminal```
  * For debian or derivates (like Ubuntu):\
```sudo apt-get install rar```

  * For any other Linux Distribution:
  ```bash
  gzip -dc rarlinux-X.X.X.tar.gz | tar -xvf -
cd rar
make install
cd ..
rm -R rar
  ```

## Source:
<https://www.linuxadictos.com/tutorial-para-instalar-rar-en-linux-y-aprender-utilizarlo.html>
