---
layout: post
title: Configurar el teclado si ejecuto una maquina virtual de Ubuntu en macOS
categories: bioinformatics linux
author: Rogelio Prieto Alvarado
date: August 04, 2021
---

## Problema:

Ubuntu no reconoce mi teclado correctamente. Estoy utilizando VirtualBox para ejecutar Ubuntu 20.04 (máquina virtual) en una computadora macOS (máquina _host_) con teclado en español.


https://raw.githubusercontent.com/rogelioprieto/linux-tips/master/_posts/

## Solución:

Configurar la distribución de teclado en `Ubuntu 20.04`, deberá elegir `Español (Macintosh)`.


### Paso a paso:

1. Clic en el botón  ⏻ -> `Configuración`, ubicado en la parte superior derecha de la pantalla.

![01](https://raw.githubusercontent.com/rogelioprieto/linux-tips/master/_posts/configurar-teclado-ubuntu-mv/01.png)

2. En el menú de la izquierda elija `Región en Idioma`. Clic en el `+`, para agregar una nueva Distribución de teclado.

![02](https://raw.githubusercontent.com/rogelioprieto/linux-tips/master/_posts/configurar-teclado-ubuntu-mv/02.png)


3. Aparecerá la ventana `Añadir fuente de entrada`. Para elegir otro diferente a esa lista, dé clic en el botón "tres puntos suspensivos" `...`.\ 
Después, clic en el botón `Otra`. 

![](https://raw.githubusercontent.com/rogelioprieto/linux-tips/master/_posts/configurar-teclado-ubuntu-mv/03a.png)

![](https://raw.githubusercontent.com/rogelioprieto/linux-tips/master/_posts/configurar-teclado-ubuntu-mv/03b.png)


4. En el cuadro de búsqueda teclee `español` (1), de la lista de resultados seleccione `Español (Macintosh)` (2) y dé clic en el Botón `Añadir` (3).

![04](https://raw.githubusercontent.com/rogelioprieto/linux-tips/master/_posts/configurar-teclado-ubuntu-mv/04.png)


5. Mueva el elemento hacia arriba para que tenga la mayor prioridad. Así la próxima vez que inicie sesión, Ubuntu utilizará esta distribución de teclado como predeterminada (o _default_).

![05](https://raw.githubusercontent.com/rogelioprieto/linux-tips/master/_posts/configurar-teclado-ubuntu-mv/05.png)

Cierre esa ventana, se aceptarán los cambios realizados.

6. En la sesión actual es necesario que active la nueva distribución. De clic en la parte superior derecha de la pantalla, tal como se muestra en la imagen.

![06](https://raw.githubusercontent.com/rogelioprieto/linux-tips/master/_posts/configurar-teclado-ubuntu-mv/06.png)

¡Listo, hemos terminado! Su teclado está configurado en Ubuntu (máquina virtual) con la distribución de teclado adecuada.






