---
layout: post
title: (Geología) Manual Maquina Virtual Linux - 2021
categories: geology
author: Rogelio Prieto Alvarado
date: July 11, 2021
---

![](https://raw.githubusercontent.com/rogelioprieto/linux-tips/master/_posts/mv-rhyolite-MELTS-images/Escuela-de-Verano2021-header.png)

Se desea utilizar el software [rhyolite-MELTS v1.0.x](http://melts.ofm-research.org/) que está disponible para ejecutarse en Linux.
Para ello, se utilizará una [máquina virtual](https://www.redhat.com/es/topics/virtualization/what-is-a-virtual-machine). De esta manera podrás ejecutar Linux desde tu computadora aunque esta cuente con otro sistema operativo instalado. No se afectará el funcionamiento del sistema operativo actual.

Utilizaremos el software `Virtual Box` de Oracle para ejecutar desde ahí la máquina virtual que utilizaremos. Para realizar la instalación y configuración, ejecuta los siguiente pasos:

**Paso 1.** Descargar el software `Virtual Box` de Oracle.

Para Windows:  
<https://download.virtualbox.org/virtualbox/6.1.22/VirtualBox-6.1.22-144080-Win.exe>

Para mac OS:  
<https://download.virtualbox.org/virtualbox/6.1.22/VirtualBox-6.1.22-144080-OSX.dmg>

Para Linux  
<https://www.virtualbox.org/wiki/Linux_Downloads>


**Paso 2.** Instalar `Virtual Box`. Para ello ejecuta el archivo que se descargó en el paso anterior.

Sigue los pasos solicitados por el instalador.

![](https://raw.githubusercontent.com/rogelioprieto/linux-tips/master/_posts/mv-rhyolite-MELTS-images/00.png)




**Paso 3.** Descargar la máquina virtual (archivo `.OVA`) que el instructor del curso ha preparado. Use este enlace:


<https://drive.google.com/file/d/1G0tday87DnnS5KiKeeT-hOcR2N5zsW5z/view?usp=sharing>

**Paso 4.** Ejecutar el software `Oracle VM VirtualBox`.
	a) Si usas Windows, ve a menú Inicio y busca el programa, le das clic para ejecutarlo.
    b) Si usas Mac OS ejecuta la aplicación `Launchpad`, desde ahí busca y da clic en `Oracle VM VirtualBox`.
    c) Si usas Linux, busca la aplicación en el menú de aplicaciones y ejecuta `Oracle VM VirtualBox`.

![](https://raw.githubusercontent.com/rogelioprieto/linux-tips/master/_posts/mv-rhyolite-MELTS-images/01.png)

**Paso 5.** Importar la máquina virtual (el archivo `.OVA` que ya fue descargado).

5.1 Elija el menú `Archivo`, la opción `Importar servicio virtualizado`. ![](https://raw.githubusercontent.com/rogelioprieto/linux-tips/master/_posts/mv-rhyolite-MELTS-images/02.png)

5.2 Aparecerá una ventana, de clic en el ícono `carpeta` y ubique el archivo que descargó, se llama `Ubuntu 18.04 Desktop.ova`. Dé clic en `Siguiente`. 
![](https://raw.githubusercontent.com/rogelioprieto/linux-tips/master/_posts/mv-rhyolite-MELTS-images/03.png) 

![](https://raw.githubusercontent.com/rogelioprieto/linux-tips/master/_posts/mv-rhyolite-MELTS-images/04.png) 

![](https://raw.githubusercontent.com/rogelioprieto/linux-tips/master/_posts/mv-rhyolite-MELTS-images/05.png)

5.3 Aparecerá la ventana `Preferencias del servicio`. Dé clic en `Importar`.  
5.4 Aparecerá una ventana emergente, espere a que termine el proceso de importación.  
![](https://raw.githubusercontent.com/rogelioprieto/linux-tips/master/_posts/mv-rhyolite-MELTS-images/06.png)
5.5 Después de terminar el proceso de importación, la máquina virtual estará disponible para usarse.  
![](https://raw.githubusercontent.com/rogelioprieto/linux-tips/master/_posts/mv-rhyolite-MELTS-images/07.png)  

**Paso 6.** Ejecutar la máquina virtual. Selecciona la máquina `Ubuntu MATE 20.04` Da clic en el botón `Iniciar`. 

![](https://raw.githubusercontent.com/rogelioprieto/linux-tips/master/_posts/mv-rhyolite-MELTS-images/08.png)  

Usuario: `alumnos`  
Contraseña: `12345678`

¡Felicidades, te esperamos en el inicio del curso!. Revisa el [calendario](https://fic.uas.edu.mx/escueladeverano/). La primera sesión será el lunes 26/julio/2021.
