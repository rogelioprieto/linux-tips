---
layout: post
title: Revisar la ortografía en español utilizando bash o Terminal.
categories: linux
author: Rogelio Prieto Alvarado
date: August 04, 2021
---


## Problema:

He escrito documentos de texto plano y necesito revisar la ortografía en español utilizando la Terminal en Ubuntu.

Mis archivos son archivos de texto (`.txt`) y markdown (`.md`).



## Solución:

Instalar el paquete del diccionario de español de aspell y ejecutar la revisión ortográfica en el archivo deseado.

### Paso a paso:

1. Instalar el paquete de aspell en español.
```bash
sudo apt-get install aspell-es
```

2. Ejecutar la revisión ortográfica especificando el idioma y el archivo a analizar. Se recomienda indicar el tipo de archivo.

Para un archivo de texto (`.txt`):
```bash
aspell --lang=es_MX.UTF-8 check miarchivo.txt
```

Para un archivo markdown (`.md`):
```bash
aspell --lang=es_MX.UTF-8 --mode=markdown check miarchivo.md
```


Para un archivo html(`.html`):
```bash
aspell --lang=es_MX.UTF-8 --mode=html check miarchivo.html```



Al terminar, se habrá concluido la revisión ortográfica y se habrá creado un respaldo (una copia) con la extensión `.bak`


## Referencias:

aspell package.\ 
<https://packages.ubuntu.com/search?keywords=aspell>

aspell man page.\ 
<https://linuxcommand.org/lc3_man_pages/aspell1.html>

gnu aspell.\ 
<http://aspell.net/>

