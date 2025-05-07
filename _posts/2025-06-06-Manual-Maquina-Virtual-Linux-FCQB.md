---
layout: post
title: Manual Máquina Virtual Linux - FCQB - Tópicos selectos
categories: bioinformatics
author: Rogelio Prieto Alvarado
date: 2025-05-06
---

![](https://raw.githubusercontent.com/rogelioprieto/linux-tips/master/_posts/biomedicas-2025-images/bioinformatics-adn-letras.png)

⚠️⚠️ **Enlace 12:25pm:** <https://meet.google.com/svn-tqvv-odc>

⚠️⚠️⚠️*¡NUEVO ENLACE!* a la videollamada: <https://meet.google.com/xds-fbnp-rkb>


En la materia «Tópicos Selectos»  del [Posgrado en Ciencias Biomédicas](https://mcb.uas.edu.mx/), se utilizará una [máquina virtual](https://www.redhat.com/es/topics/virtualization/what-is-a-virtual-machine). De esta manera podrás ejecutar Linux desde tu computadora aunque esta cuente con otro sistema operativo instalado. No se afectará el funcionamiento del sistema operativo actual.

- 🚩 **¡Nota!** El tiempo estimado para realizar este manual es de **2 horas** debido al tiempo de descarga y configuración.

Utilizaremos el software [`VirtualBox`](https://www.virtualbox.org/) de Oracle para ejecutar desde ahí la máquina virtual. Para realizar la instalación y configuración, ejecuta los siguiente pasos:



**Paso 1.** Descargar el software `VirtualBox` de Oracle.

Para Windows:  
<https://download.virtualbox.org/virtualbox/7.1.8/VirtualBox-7.1.8-168469-Win.exe>

Para mac OS:  
<https://download.virtualbox.org/virtualbox/7.1.8/VirtualBox-7.1.8-168469-OSX.dmg>

Para Linux  
<https://www.virtualbox.org/wiki/Linux_Downloads>


**Paso 2.** Instalar `VirtualBox`. Para ello ejecuta el archivo que se descargó en el paso anterior.

Sigue los pasos solicitados por el instalador.

![](https://raw.githubusercontent.com/rogelioprieto/linux-tips/master/_posts/biomedicas-2025-images/00.png)



**Paso 3.** Descargar y descomprimir la máquina virtual que los instructores han preparado.

_3.1_ Para descargar la máquina virtual en formato comprimido (archivo `.7z`), use este enlace:

[![file-icon-32px](https://raw.githubusercontent.com/rogelioprieto/linux-tips/master/_posts/biomedicas-2025-images/file-icon-32px.png)Ubuntu 22.04.2.vdi.7z](https://universidadautono220-my.sharepoint.com/:u:/g/personal/rogelioprieto_ms_uas_edu_mx/EaDL25v7CXJOnZOhyAd3cB4BhyW86V9VDALdPDwdAzAxJg?e=WXowZ9)


_3.2_ Descomprima el archivo descargado (archivo `Ubuntu 20.04.2.vdi.7z`). Para ello:

a) si usted está utilizando **Windows**, se requiere el software [`7zip`](https://www.7-zip.org/) o [`Winzip`](https://www.winzip.com/es/learn/file-formats/7z/). Se recomienda `7zip` por ser de _código abierto_ y gratuito. Para instalar `7zip` siga el **Método 2** de este manual: <https://es.wikihow.com/abrir-archivos-7z>.


1. Ubica el archivo `Ubuntu 22.04.2.vdi.7z` en tu el explorador de archivos. (ubicado en Descargas).
2. Da clic derecho sobre él para abrir el menú contextual.
3. Selecciona `7zip`  ➙ `Extraer Aquí`.

b) Si está utilizando **macOS**, requiere utilizar el software [The Unarchiver](https://theunarchiver.com/). Para instalarlo solo ingrese al link y elija `Instalar desde la Mac App Store`. Una vez instalada la aplicación, deberá abrir el archivo `.7z`: 

1. Ubica el archivo `Ubuntu 22.04.2.vdi.7z` en tu Mac. (ubicado en Descargas).
2. Da clic derecho sobre él para abrir el menú contextual.
3. Selecciona `Abrir con`  ➙ `The Unarchiver.app`.


Aparecerá el archivo `Ubuntu 22.04.2.vdi` (archivo ya descomprimido) en la misma ubicación (en Descargas). Compruebe esto, antes de continuar al Paso 4.



**Paso 4.** Ejecutar el software `Oracle VM VirtualBox`.

_4.1_  

a) Si usas Windows, ve a menú Inicio y busca el programa, le das clic para ejecutarlo.  

b) Si usas Mac OS ejecuta la aplicación `Launchpad`, desde ahí busca y da clic en `Oracle VM VirtualBox`.

c) Si usas Linux, busca la aplicación en el menú de aplicaciones y ejecuta `Oracle VM VirtualBox`.

_4.2_ 

Clic en el botón `Nuevo`.\
Escribe los datos del sistema operativo:  
Nombre: `Ubuntu 22.04.2`  
Tipo: `Linux`  
Versión: `64 bits`  
Clic en `Siguiente`.

![](https://raw.githubusercontent.com/rogelioprieto/linux-tips/master/_posts/biomedicas-2025-images/01A.png)


**Paso 5.** En la siguiente ventana, elige la cantidad de memoria RAM que asignarás a tu Máquina virtual.
Se recomienda asignar 4096 MB (4GB). Verifica que tu computadora tiene la cantidad de RAM suficiente para ello.

![](https://raw.githubusercontent.com/rogelioprieto/linux-tips/master/_posts/biomedicas-2025-images/02A.png)

**Paso 6.** Cuando aparezca esta ventana, selecciona la 3ra opción: `Usar un disco duro virtual existente`.\
Clic el ícono de carpeta (2). Aparecerá una ventana, da clic en `Añadir` (3), navega al directorio (4) donde está almacenado el archivo `.vdi` (fue descargado y descomprimido en el Paso 3).\
Selecciona el archivo `Ubuntu 22.04.2.vdi` y da clic en `Abrir`.
Finalmente, (6) selecciona la línea `Ubuntu 22.04.2.vdi` y da clic en el botón `Seleccionar`(7).


![](https://raw.githubusercontent.com/rogelioprieto/linux-tips/master/_posts/biomedicas-2025-images/03A.png)


![](https://raw.githubusercontent.com/rogelioprieto/linux-tips/master/_posts/biomedicas-2025-images/04A.png)


![](https://raw.githubusercontent.com/rogelioprieto/linux-tips/master/_posts/biomedicas-2025-images/05A.png)



**Paso 7.** Una vez que la Máquina Virtual ha sido creada.\
Selecciona la Máquina Virtual y da clic en `Configuración`.

En esta captura de pantalla, puedes observar la cantidad de memoria de video máxima que puede ser asignada a la Máquina Virtual. Si asignas la mayor cantidad posible, la Máquina Virtual puede tener un mejor rendimiento.

También revisa y activa la `Activar la Aceleración 3D`. Si tienes algún problema con VirtualBox después de activar esta opción, entonces puedes desactivarla.

![](https://raw.githubusercontent.com/rogelioprieto/linux-tips/master/_posts/biomedicas-2025-images/06A.png)


**Paso 8.** Selecciona `Ubuntu 22.04.2` y da clic en `Iniciar`. Se ejecutará Ubuntu. La contraseña es `12345678`.

¡Felicidades👏🥳, te esperamos en el inicio del curso!. Revisa el calendario.


- 📅 **Miércoles 7/mayo/2025 9:00-11:00 horas.** Asesoría para responder preguntas o problemas específicos de este manual.\
⚠️⚠️⚠️*¡NUEVO ENLACE!* a la videollamada: <https://meet.google.com/xds-fbnp-rkb>

- 📅 **Viernes 9/mayo/2025. 9:00-11:00 horas.** será la primera sesión del curso. \
Enlace a la videollamada: **PENDIENTE** usaremos Microsoft Teams.\
(no requiere correo de Microsoft, puede conectarse desde su navegador web)


**PD.** Si seguiste este manual y no fue posible ejecutar (_correr_) con éxito la Máquina Virtual. Puedes solicitar soporte al correo: ![rogelio-prieto-correo-uas-v02](https://raw.githubusercontent.com/rogelioprieto/linux-tips/master/assets/images/rogelio-prieto-correo-uas-v02-vsm.png)\
También, puede asistir a la sesión de asesoría.

