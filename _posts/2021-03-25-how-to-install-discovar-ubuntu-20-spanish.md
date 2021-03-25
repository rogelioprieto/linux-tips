---
layout: post
title: ¿Cómo instalar Discovar en Ubuntu 20.04?. How to install Discovar in Ubuntu 20.04? - spanish version (español)
categories: github
author: Rogelio Prieto Alvarado
date: March 25, 2021
---

## Problema:
Al compilar utilizando ```make all```, se obtiene el error:

```bash
make: *** [Makefile:288: install-recursive] Error 1
```

## Solución:
Compilar usando una versión de ```gcc 4.x```


### Paso a paso:

1. Instalar pre-requisitos:
```bash
$ sudo apt-get install libjemalloc-dev
$ sudo apt-get install zlib1g-dev
```

2. Instalar samtools (required if using bam files)
```bash
$ sudo apt-get install samtools
```


3. abrir el archivo
```bash
$ sudo gedit /etc/apt/sources.list
```

4. agregar esas dos lineas al final del archivo.
```bash
#RPA ADDED
deb http://us.archive.ubuntu.com/ubuntu bionic main universe
```

5. Ejecutar en Terminal:
```bash
$ sudo apt upgrade && apt install gcc-4.8 g++-4.8
```

6. Configurar las multiples versiones de GCC 
```bash
$ sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-4.8 40 \
--slave /usr/bin/g++ g++ /usr/bin/g++-4.8
$ sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-9 90 \
--slave /usr/bin/g++ g++ /usr/bin/g++-9 
```

7. Elegir la versión 4.8
```bash
$ sudo update-alternatives --config gcc
```

8. Instalar Discovar. Seguir las instrucciones especificadas en el archivo INSTALL. En breve son:
```bash
tar xzf discovardenovo-NNNNN.tar.gz
cd discovardenovo-52488/
./configure
make all
make install
```
donde ```NNNNN``` es la versión, este caso es la versión 52488.

9. Borrar la url del repositorio. Borrar las dos últimas líneas agregadas al archivo.
```bash
$ sudo gedit /etc/apt/sources.list
``` 
Para dejar de utilizar el repositorio de una versión anterior de Ubuntu.

## Referencias o enlaces:
- Solución encontrada en el grupo de correo de Discovar:

<https://groups.google.com/a/broadinstitute.org/g/discovar-user-forum>

buscar: _Makefile:288 install-recursive_

<https://groups.google.com/u/1/a/broadinstitute.org/g/discovar-user-forum/c/RWFyF11-cjc/m/VLwHBQqeCAAJ>

- Install gcc in Ubuntu 20.04

<https://linuxize.com/post/how-to-install-gcc-on-ubuntu-20-04/>

- Discovar - manual and faq

<https://software.broadinstitute.org/software/discovar/blog/?page_id=19>

- How to compile with gcc

<https://stackoverflow.com/questions/27390078/gcc-compiling-c-code-undefined-reference-to-operator-newunsigned-long-lon/27390293>

