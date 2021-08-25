---
layout: post
title: Manual Máquina Virtual Linux - Diplomado en Bioinformática 2021
categories: bioinformatics
author: Rogelio Prieto Alvarado
date: August 23, 2021
---

![](https://raw.githubusercontent.com/rogelioprieto/linux-tips/master/_posts/dip-bio-2021-images/DipBio-header-01.jpg)

En los cursos del «Diplomado en Bioinformática 2021», se utilizará una [máquina virtual](https://www.redhat.com/es/topics/virtualization/what-is-a-virtual-machine). De esta manera podrás ejecutar Linux desde tu computadora aunque esta cuente con otro sistema operativo instalado. No se afectará el funcionamiento del sistema operativo actual.

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

![](https://raw.githubusercontent.com/rogelioprieto/linux-tips/master/_posts/dip-bio-2021-images/00.png)

**Paso 3.** Descargar y descomprimir la máquina virtual que los instructores han preparado.

_3.1_ Para descargar la máquina virtual en formato comprimido (archivo `.7z`), use este enlace:

[![file-icon-32px](https://raw.githubusercontent.com/rogelioprieto/linux-tips/master/_posts/verano2021-bioinfo-images/file-icon-32px.png)Ubuntu Desktop 20.04 Bioinformatica.ova.7z](https://drive.google.com/file/d/17QzlxX6_QPWDEiAfl8byrUn4lltqMVjy/view?usp=sharing)

_3.2_ Descomprima el archivo descargado (archivo `Ubuntu Desktop 20.04 Bioinformatica.ova.7z`). Para ello:

a) si usted está utilizando Windows, se requiere el software [`7zip`](https://www.7-zip.org/) o [`Winzip`](https://www.winzip.com/es/learn/file-formats/7z/). Se recomienda `7zip` por ser de _código abierto_ y gratuito. Para instalar `7zip` siga el **Método 2** de este manual: <https://es.wikihow.com/abrir-archivos-7z>.

b) Si está utilizando macOS, requiere utilizar el software [The Unarchiver](https://theunarchiver.com/). Para instalarlo solo ingrese al link y elija `Instalar desde la App Store`. Una vez instalada la aplicación, deberá abrir el archivo `.7z`: 

1. Ubica el archivo `Ubuntu Desktop 20.04 Bioinformatica.ova.7z` en tu Mac. (ubicado en Descargas).
2. Da clic derecho sobre él para abrir el menú contextual.
3. Selecciona `Abrir con`  ➙ `The Unarchiver.app`.


Aparecerá el archivo `Ubuntu Desktop 20.04 Bioinformatica.ova` (archivo ya descomprimido) en la misma ubicación (en `Descargas`). Compruebe esto, antes de continuar al Paso 4.


**Paso 4.** Ejecutar el software `Oracle VM VirtualBox`.

a. Si usas *Windows*, ve a menú Inicio y busca el programa, le das clic para ejecutarlo.\
b. Si usas _Mac OS_ ejecuta la aplicación `Launchpad`, desde ahí busca y da clic en `Oracle VM VirtualBox`.\
c. Si usas _Linux_, busca la aplicación en el menú de aplicaciones y ejecuta `Oracle VM VirtualBox`.

![](https://raw.githubusercontent.com/rogelioprieto/linux-tips/master/_posts/dip-bio-2021-images/01.png)


**Paso 5.** Importar la máquina virtual (el archivo `.OVA` que ya fue descargado).

5.1 Elija el menú `Archivo`, la opción `Importar servicio virtualizado`. ![](https://raw.githubusercontent.com/rogelioprieto/linux-tips/master/_posts/dip-bio-2021-images/02.png)

5.2 Aparecerá una ventana, de clic en el ícono `carpeta` y ubique el archivo que descargó, se llama `Linux Ubuntu 20.04.ova`. Dé clic en `Siguiente`. ![](https://raw.githubusercontent.com/rogelioprieto/linux-tips/master/_posts/dip-bio-2021-images/03.png)

![](https://raw.githubusercontent.com/rogelioprieto/linux-tips/master/_posts/dip-bio-2021-images/04.png) 

5.3 Aparecerá la ventana `Preferencias del servicio`. Desactive la casilla `Controlador USB` y dé clic en `Importar`.  
![](https://raw.githubusercontent.com/rogelioprieto/linux-tips/master/_posts/dip-bio-2021-images/05.png)

5.4 Aparecerá una ventana emergente, espere a que termine el proceso de importación.  
![](https://raw.githubusercontent.com/rogelioprieto/linux-tips/master/_posts/dip-bio-2021-images/06.png)

5.5 Después de terminar el proceso de importación, la máquina virtual estará disponible para usarse.  
![](https://raw.githubusercontent.com/rogelioprieto/linux-tips/master/_posts/dip-bio-2021-images/07.png)  


¡Felicidades👏🥳, te esperamos en el inicio del curso!. Revisa el [calendario](https://fic.uas.edu.mx/diplomado-en-bioinformatica/). La primera sesión de Linux será el **jueves 26/agosto/2021**.

**PD.** Si seguiste este manual y no fue posible correr con éxito la Máquina Virtual. Puede solicitar soporte al correo: rogelioprieto@uas.edu.mx.\
También, se tendrá una sesión de asesoría el día **Miércoles 25/agosto/2021 6:00 pm** para resolver preguntas o problemas específicos.
