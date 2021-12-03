---
#layout: post
title: Listado de herramientas bioinformáticas instalados en ambientes de miniconda.
subtitle: Diplomado en Bionformática 2021
date: 1/december/2021
lang: es-MX
# highlight-style: kate
# pygments (the default), kate, monochrome, breezeDark, espresso, zenburn, haddock, and tango
#categories: virtualbox
---

# Listado de herramientas bioinformáticas en ambientes de miniconda.

Las herramientas que utilizará el Dr. Luis Fernando Lozano para impartir el módulo «Análisis Bioinformático» están disponibles en los ambientes de miniconda que su computadora tiene instalados. El Cuadro 1 muestra ese listado.


|   Ambiente en conda   | Herramienta bioinformática|
|-----------------------|---------------------------|
|bioinformatica         |FastQC                     |
|anvio-7                |bowtie2                    |
|bioinformatica         |mummer                     |
|bioinformatica         |Trimgalore                 |
|bioinformatica         |Trimmomatic                |
|prokka                 |Prokka                     |

Table: Ambientes instalados en conda.


1. Para activar un ambiente :
```bash
$ conda activate nombreambiente
```
Ejemplo:
```bash
$ conda activate bioinformatica
```

2. Para desactivar el ambiente:
```bash
$ conda deactivate
```



