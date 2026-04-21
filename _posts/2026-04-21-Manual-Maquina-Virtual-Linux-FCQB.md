---
layout: post
title: Manual Máquina Virtual Linux - FCQB - Tópicos selectos
categories: bioinformatics
author: Rogelio Prieto Alvarado
date: 2026-04-21
---

![](https://raw.githubusercontent.com/rogelioprieto/linux-tips/master/_posts/biomedicas-2026-images/bioinformatics-adn-letras.png)


En la materia «Tópicos Selectos»  del [Posgrado en Ciencias Biomédicas](https://mcb.uas.edu.mx/), se utilizará una [máquina virtual](https://www.redhat.com/es/topics/virtualization/what-is-a-virtual-machine) para ejecutar Linux desde tu computadora; aunque esta cuente con otro sistema operativo instalado. No se afectará el funcionamiento del sistema operativo actual.

- 🚩 **¡Nota!** El tiempo estimado para realizar este manual es de **2 horas** debido al tiempo de descarga y configuración.

Utilizaremos el software [`VirtualBox`](https://www.virtualbox.org/) de Oracle para ejecutar desde ahí la máquina virtual. Para realizar la instalación y configuración, ejecuta los siguiente pasos:

**Paso 1.** Descargar el software `VirtualBox` de Oracle.

Para Windows:  
<https://download.virtualbox.org/virtualbox/7.2.6/VirtualBox-7.2.6a-172322-Win.exe>

Para mac OS, con procesadores Apple (_Apple silicon_):  
<https://download.virtualbox.org/virtualbox/7.2.6/VirtualBox-7.2.6-172322-macOSArm64.dmg>

Para mac OS, con procesadores Intel:  
<https://download.virtualbox.org/virtualbox/7.2.6/VirtualBox-7.2.6-172322-OSX.dmg>

Para Linux  
<https://www.virtualbox.org/wiki/Linux_Downloads>


**Paso 2.** Instalar `VirtualBox`. Para ello ejecuta el archivo que se descargó en el paso anterior.

Sigue los pasos solicitados por el instalador.

![](https://raw.githubusercontent.com/rogelioprieto/linux-tips/master/_posts/biomedicas-2026-images/00.png)



**Paso 3.** Descargar y descomprimir la máquina virtual que los instructores han preparado.

_3.1_ Para descargar la máquina virtual en formato comprimido (archivo `.7z`), use este enlace:

[![file-icon-32px](https://raw.githubusercontent.com/rogelioprieto/linux-tips/master/_posts/biomedicas-2026-images/file-icon-32px.png)Ubuntu 24.04.4.7z](https://universidadautono220-my.sharepoint.com/:u:/g/personal/rogelioprieto_ms_uas_edu_mx/EaDL25v7CXJOnZOhyAd3cB4BhyW86V9VDALdPDwdAzAxJg?e=WXowZ9)


_3.2_ Descomprima el archivo descargado (archivo `Ubuntu 24.04.4.7z`). Para ello:

a) si usted está utilizando **Windows**, se requiere el software [`7zip`](https://www.7-zip.org/) o [`Winzip`](https://www.winzip.com/es/learn/file-formats/7z/). Se recomienda `7zip` por ser de _código abierto_ y gratuito. Para instalar `7zip` siga el **Método 2** de este manual: <https://es.wikihow.com/abrir-archivos-7z>.


1. Ubica el archivo `Ubuntu 24.04.4.7z` en tu el explorador de archivos. (ubicado en Descargas).
2. Da clic derecho sobre él para abrir el menú contextual.
3. Selecciona `7zip`  ➙ `Extraer Aquí`.

b) Si está utilizando **macOS**, requiere utilizar el software [The Unarchiver](https://theunarchiver.com/). Para instalarlo solo ingrese al link y elija `Instalar desde la Mac App Store`. Una vez instalada la aplicación, deberá abrir el archivo `.7z`: 

1. Ubica el archivo `Ubuntu 24.04.4.7z` en tu Mac. (ubicado en Descargas).
2. Da clic derecho sobre él para abrir el menú contextual.
3. Selecciona `Abrir con`  ➙ `The Unarchiver.app`.


Aparecerá el archivo `Ubuntu 24.04.4.vdi` (archivo ya descomprimido) en la misma ubicación (en Descargas). Compruebe esto, antes de continuar al Paso 4.

TODO CONTINUAR...

**Paso 4.** Ejecutar el software `Oracle VM VirtualBox`.

_4.1_  

a) Si usas Windows, ve a menú Inicio y busca el programa, le das clic para ejecutarlo.  
    - si te aparece el error: "... necesita el paquete redistribuible de Microsoft Visual C++ 2019...", lo debe descargar e instalar desde aquí: <https://learn.microsoft.com/en-us/cpp/windows/latest-supported-vc-redist?view=msvc-170#latest-supported-redistributable-version>.

b) Si usas Mac OS ejecuta la aplicación `Launchpad`, desde ahí busca y da clic en `Oracle VM VirtualBox`.

c) Si usas Linux, busca la aplicación en el menú de aplicaciones y ejecuta `Oracle VM VirtualBox`.

_4.2_ 

Clic en el botón `Nueva`.\
Escribe los datos del sistema operativo:  
Nombre: `Ubuntu 24.04.4`  
Tipo: `Linux`  
Versión: `64 bits`  
Clic en `Siguiente`.

![](https://raw.githubusercontent.com/rogelioprieto/linux-tips/master/_posts/biomedicas-2026-images/01.png)


**Paso 5.** En la siguiente ventana, elige la cantidad de memoria RAM que asignarás a tu Máquina virtual.
Se recomienda asignar al menos 4096 MB (4GB). Verifica que tu computadora tiene la cantidad de RAM suficiente para ello.

![](https://raw.githubusercontent.com/rogelioprieto/linux-tips/master/_posts/biomedicas-2026-images/02.png)

**Paso 6.** Cuando aparezca esta ventana (1), selecciona la 2da opción: `Usar un disco duro virtual existente` (2).\
Clic el ícono de carpeta (3).

![](https://raw.githubusercontent.com/rogelioprieto/linux-tips/master/_posts/biomedicas-2026-images/03.png)

Aparecerá una ventana, da clic en `Añadir` (1), navega al directorio (2) donde está almacenado el archivo `.vdi` (fue descargado y descomprimido en el Paso 3).\
Selecciona el archivo `Ubuntu 24.04.4.vdi` (3) y da clic en `Abrir`.

![](https://raw.githubusercontent.com/rogelioprieto/linux-tips/master/_posts/biomedicas-2026-images/03B.png)

Finalmente, (4) selecciona la línea `Ubuntu 24.04.4.vdi` y da clic en el botón `Seleccionar`(7).

![](https://raw.githubusercontent.com/rogelioprieto/linux-tips/master/_posts/biomedicas-2026-images/03C.png)



**Paso 7.** Una vez que la Máquina Virtual ha sido creada.\
Selecciona la Máquina Virtual y da clic en `Configuración`.

En esta captura de pantalla, puedes observar la cantidad de memoria de video máxima que puede ser asignada a la Máquina Virtual. Si asignas la mayor cantidad posible, la Máquina Virtual puede tener un mejor rendimiento.

También revisa y activa la `Activar la Aceleración 3D`. Si tienes algún problema con VirtualBox después de activar esta opción, entonces puedes desactivarla.

![](https://raw.githubusercontent.com/rogelioprieto/linux-tips/master/_posts/biomedicas-2026-images/04.png)

![](https://raw.githubusercontent.com/rogelioprieto/linux-tips/master/_posts/biomedicas-2026-images/05.png)


**Paso 8.** Selecciona `Ubuntu 24.04.4` y da clic en `Iniciar`. Se ejecutará Ubuntu. La contraseña es `12345678`.

¡Felicidades👏🥳, te esperamos en el inicio del curso!. Revisa el calendario.


- 📅 **Miércoles 22/abril/2026 10:30-12:00 horas.** Asesoría para responder preguntas o problemas específicos de este manual.\
⚠️⚠️⚠️*¡NUEVO ENLACE!* a la videollamada: <https://meet.google.com/pgp-tpbe-dgo>

- 📅 **Jueves 23/abril/2026. 08:30 horas** será la primera sesión del curso. \
Enlace a la videollamada: **PENDIENTE** usaremos Microsoft Teams.\
(no requiere correo de Microsoft, puede conectarse desde su navegador web)


**PD.** Si seguiste este manual y NO fue posible ejecutar (_correr_) con éxito la Máquina Virtual. Puedes solicitar soporte al correo: ![rogelio-prieto-correo-uas-v02](https://raw.githubusercontent.com/rogelioprieto/linux-tips/master/assets/images/rogelio-prieto-correo-uas-v02-vsm.png)\
También, puede asistir a la sesión de asesoría.

