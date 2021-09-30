---
layout: post
title: (Opción 02) Manual Máquina Virtual Linux - Diplomado en Bioinformática 2021 
categories: bioinformatics
author: Rogelio Prieto Alvarado
date: September 29, 2021
---

![](https://raw.githubusercontent.com/rogelioprieto/linux-tips/master/_posts/dip-bio-2021-images/DipBio-header-01.jpg)

En el curso «Análisis bioinformático I» impartido por el Dr Gilberto Vaughan Figueroa como parte del «Diplomado en Bioinformática 2021», se utilizará una [máquina virtual](https://www.redhat.com/es/topics/virtualization/what-is-a-virtual-machine). De esta manera podrás ejecutar Linux desde tu computadora aunque esta cuente con otro sistema operativo instalado. No se afectará el funcionamiento del sistema operativo actual.

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

[![file-icon-32px](https://raw.githubusercontent.com/rogelioprieto/linux-tips/master/_posts/verano2021-bioinfo-images/file-icon-32px.png)Windows10-Bioinformatica.vdi.7z](https://drive.google.com/file/d/1Qf7mDs9NnvZSime2kzKj5KN_ArQoQUNi/view?usp=sharing)

_3.2_ Descomprima el archivo descargado (archivo `Windows10-Bioinformatica.vdi.7z`). Para ello:

a) si usted está utilizando Windows, se requiere el software [`7zip`](https://www.7-zip.org/) o [`Winzip`](https://www.winzip.com/es/learn/file-formats/7z/). Se recomienda `7zip` por ser de _código abierto_ y gratuito. Para instalar `7zip` siga el **Método 2** de este manual: <https://es.wikihow.com/abrir-archivos-7z>.

b) Si está utilizando macOS, requiere utilizar el software [The Unarchiver](https://theunarchiver.com/). Para instalarlo solo ingrese al link y elija `Instalar des la Mac App Store`. Una vez instalada la aplicación, deberá abrir el archivo `.7z`: 

1. Ubica el archivo `Ubuntu Desktop 20.04 Bioinformatica.vdi.7z` en tu Mac. (ubicado en Descargas).
2. Da clic derecho sobre él para abrir el menú contextual.
3. Selecciona `Abrir con`  ➙ `The Unarchiver.app`.


Aparecerá el archivo `Ubuntu Desktop 20.04 Bioinformatica.vdi` (archivo ya descomprimido) en la misma ubicación (en Descargas). Compruebe esto, antes de continuar al Paso 4.



**Paso 4.** Ejecutar el software `Oracle VM VirtualBox`.

_4.1_  

a) Si usas Windows, ve a menú Inicio y busca el programa, le das clic para ejecutarlo.  

b) Si usas Mac OS ejecuta la aplicación `Launchpad`, desde ahí busca y da clic en `Oracle VM VirtualBox`.

c) Si usas Linux, busca la aplicación en el menú de aplicaciones y ejecuta `Oracle VM VirtualBox`.

_4.2_ 

Clic en el botón `Nuevo`.\
Escribe los datos del sistema operativo:  
Nombre: `Ubuntu 20.04`  
Tipo: `Linux`  
Versión: `64 bits`  
Clic en `Siguiente`.

![](https://raw.githubusercontent.com/rogelioprieto/linux-tips/master/_posts/dip-bio-2021-images/modbioinfoI/01.png)


**Paso 5.** En la siguiente ventana, elige la cantidad de memoria RAM que asignarás a tu Máquina virtual.
Se recomienda asignar 4096 MB (4GB). Verifica que tu computadora tiene la cantidad de RAM suficiente para ello.

![](https://raw.githubusercontent.com/rogelioprieto/linux-tips/master/_posts/dip-bio-2021-images/modbioinfoI/02.png)

**Paso 6.** Cuando aparezca esta ventana, selecciona la 3ra opción: `Usar un disco duro virtual existente`.\
Clic el ícono de carpeta (2). Aparecerá una ventana, da clic en `Añadir` (3), navega al directorio (4) donde está almacenado el archivo `.vdi` (fue descargado y descomprimido en el Paso 3).\
Selecciona el archivo `Linux Ubuntu 20.04-disk001.vdi` y da clic en `Abrir`.
Finalmente, (6) selecciona la línea `Linux Ubuntu 20.04-disk001.vdi` y da clic en el botón `Seleccionar`(7).


![](https://raw.githubusercontent.com/rogelioprieto/linux-tips/master/_posts/dip-bio-2021-images/modbioinfoI/03.png)


![](https://raw.githubusercontent.com/rogelioprieto/linux-tips/master/_posts/dip-bio-2021-images/modbioinfoI/04A.png)


![](https://raw.githubusercontent.com/rogelioprieto/linux-tips/master/_posts/dip-bio-2021-images/modbioinfoI/05.png)

![](https://raw.githubusercontent.com/rogelioprieto/linux-tips/master/_posts/dip-bio-2021-images/modbioinfoI/06.png)



**Paso 7.** Una vez que la Máquina Virtual ha sido creada.\
Selecciona la Máquina Virtual y da clic en `Configuración`.

En esta captura de pantalla, puedes observar la cantidad de memoria de video máxima que puede ser asignada a la Máquina Virtual. Si asignas la mayor cantidad posible, la Máquina Virtual puede tener un mejor rendimiento.

También revisa y activa la `Activar la Aceleración 3D`. Si tienes algún problema con VirtualBox después de activar esta opción, entonces puedes desactivarla.

![](https://raw.githubusercontent.com/rogelioprieto/linux-tips/master/_posts/dip-bio-2021-images/modbioinfoI/07.png)

**Paso 8.** Inicia (ejecuta) la Máquina Virtual creada.\
Selecciona la Máquina Virtual (MV) y da clic en `Iniciar`. Deberá iniciar la MV con Windows 10.



¡Felicidades👏🥳, te esperamos en el inicio del curso!. Revisa el [calendario](https://fic.uas.edu.mx/diplomado-en-bioinformatica/). La primera sesión de «Análisis bioinformático I» será el **jueves 30/septiembre/2021**.



**PD.** Si seguiste este manual y no fue posible correr con éxito la Máquina Virtual. Puede solicitar soporte al correo: rogelioprieto@uas.edu.mx.\
También, se tendrá una sesión de asesoría el día **Miércoles 29/septiembre/2021 6:30 pm** para resolver preguntas o problemas específicos.
