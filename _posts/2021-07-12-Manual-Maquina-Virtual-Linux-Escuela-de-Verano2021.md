---
layout: post
title: Manual Máquina Virtual Linux - Escuela de Verano 2021
categories: bioinformatics
author: Rogelio Prieto Alvarado
date: July 12, 2021
---

![](https://raw.githubusercontent.com/rogelioprieto/linux-tips/master/_posts/verano2021-images/Escuela-de-Verano2021-header.png)

En los cursos (Linux, R, Python y Herramientas colaborativas) de la «Tercera Escuela de Verano 2021», se utilizará una [máquina virtual](https://www.redhat.com/es/topics/virtualization/what-is-a-virtual-machine). De esta manera podrás ejecutar Linux desde tu computadora aunque esta cuente con otro sistema operativo instalado. No se afectará el funcionamiento del sistema operativo actual.

Utilizaremos el software `VirtualBox` de Oracle para ejecutar desde ahí la máquina virtual que utilizaremos. Para realizar la instalación y configuración, ejecuta los siguiente pasos:

**Paso 1.** Descargar el software `VirtualBox` de Oracle.

Para Windows:  
<https://download.virtualbox.org/virtualbox/6.1.22/VirtualBox-6.1.22-144080-Win.exe>

Para mac OS:  
<https://download.virtualbox.org/virtualbox/6.1.22/VirtualBox-6.1.22-144080-OSX.dmg>

Para Linux  
<https://www.virtualbox.org/wiki/Linux_Downloads>


**Paso 2.** Instalar `VirtualBox`. Para ello ejecuta el archivo que se descargó en el paso anterior.

Sigue los pasos solicitados por el instalador.

![](https://raw.githubusercontent.com/rogelioprieto/linux-tips/master/_posts/verano2021-images/00.png)



**Paso 3.** Descargar la máquina virtual (archivo `.OVA`) que el instructor del curso ha preparado.\
 Use este enlace: [Linux Ubuntu 20.04.ova](https://drive.google.com/file/d/12wth4EfguJgB95OolTBm7J-MwdK7YE03/view?usp=sharing)

**Paso 4.** Ejecutar el software `Oracle VM VirtualBox`.

a. Si usas *Windows*, ve a menú Inicio y busca el programa, le das clic para ejecutarlo.\
b. Si usas _Mac OS_ ejecuta la aplicación `Launchpad`, desde ahí busca y da clic en `Oracle VM VirtualBox`.\
c. Si usas _Linux_, busca la aplicación en el menú de aplicaciones y ejecuta `Oracle VM VirtualBox`.

![](https://raw.githubusercontent.com/rogelioprieto/linux-tips/master/_posts/verano2021-images/01.png)


**Paso 5.** Importar la máquina virtual (el archivo `.OVA` que ya fue descargado).

5.1 Elija el menú `Archivo`, la opción `Importar servicio virtualizado`. ![](https://raw.githubusercontent.com/rogelioprieto/linux-tips/master/_posts/verano2021-images/02.png)

5.2 Aparecerá una ventana, de clic en el ícono `carpeta` y ubique el archivo que descargó, se llama `Linux Ubuntu 20.04.ova`. Dé clic en `Siguiente`. ![](https://raw.githubusercontent.com/rogelioprieto/linux-tips/master/_posts/verano2021-images/03.png)

![](https://raw.githubusercontent.com/rogelioprieto/linux-tips/master/_posts/verano2021-images/04.png) 

5.3 Aparecerá la ventana `Preferencias del servicio`. Desactive la casilla `Controlador USB` y dé clic en `Importar`.  
![](https://raw.githubusercontent.com/rogelioprieto/linux-tips/master/_posts/verano2021-images/05.png)

5.4 Aparecerá una ventana emergente, espere a que termine el proceso de importación.  
![](https://raw.githubusercontent.com/rogelioprieto/linux-tips/master/_posts/verano2021-images/06.png)

5.5 Después de terminar el proceso de importación, la máquina virtual estará disponible para usarse.  
![](https://raw.githubusercontent.com/rogelioprieto/linux-tips/master/_posts/verano2021-images/07.png)  


¡Felicidades, te esperamos en el inicio del curso!. Revisa el [calendario](https://fic.uas.edu.mx/escueladeverano/). La primera sesión será el lunes 26/julio/2021.
