---
layout: post
title: (Bioinformática) Manual para configurar la Máquina Virtual - Escuela de Verano 2021
categories: bioinformatics
author: Rogelio Prieto Alvarado
date: July 30, 2021
---

![](https://raw.githubusercontent.com/rogelioprieto/linux-tips/master/_posts/verano2021-images/Escuela-de-Verano2021-header.png)


En el curso **Bioinformática para el Análisis de Genomas Bacterianos**  de la «Tercera Escuela de Verano 2020», se utilizará una [máquina virtual](https://www.redhat.com/es/topics/virtualization/what-is-a-virtual-machine). De esta manera podrás ejecutar Linux desde tu computadora aunque esta cuente con otro sistema operativo instalado. No se afectará el funcionamiento del sistema operativo actual.

Utilizaremos el software `Virtual Box` de Oracle para ejecutar desde ahí la máquina virtual que utilizaremos. Para realizar la instalación y configuración, ejecuta los siguiente pasos:

**Paso 1.** Descargar el software `Virtual Box` de Oracle.

Para Windows:  
<https://download.virtualbox.org/virtualbox/6.1.22/VirtualBox-6.1.22-144080-Win.exe>

Para mac OS:  
<https://download.virtualbox.org/virtualbox/6.1.22/VirtualBox-6.1.22-144080-OSX.dmg>

Para Linux  
<https://www.virtualbox.org/wiki/Linux_Downloads>


**Paso 2.** Instalar `VirtualBox`. Para ello ejecuta el archivo que se descargó en el paso anterior.

Sigue los pasos solicitados por el instalador.

![](https://raw.githubusercontent.com/rogelioprieto/linux-tips/master/_posts/verano2021-bioinfo-images/00A.png)


**Paso 3.** Descargar y descomprimir la máquina virtual que los instructores han preparado.

_3.1_ Para descargar la máquina virtual en formato comprimido (archivo `.7z`), use este enlace:

[![file-icon-32px](https://raw.githubusercontent.com/rogelioprieto/linux-tips/master/_posts/verano2021-bioinfo-images/file-icon-32px.png)Linux Ubuntu 20.04.7z]()

_3.2_ Descomprima el archivo descargado (archivo `Linux Ubuntu 20.04.7z`). Para ello:

a) si usted está utilizando Windows, se requiere el software [`7zip`](https://www.7-zip.org/) o [`Winzip`](https://www.winzip.com/es/learn/file-formats/7z/). Se recomienda `7zip` por ser de _código abierto_ y gratuito. Para instalar `7zip` siga el **Método 2** de este manual: <https://es.wikihow.com/abrir-archivos-7z>.

b) Si está utilizando macOS, a diferencia de Windows, no necesita instalar el software 7-Zip. macOS puede extraer archivos `.7z` con una aplicación ya existente llamada `Archive Utility`.\
Para abrir el archivo `7z`: 

1. Ubica el archivo `Linux Ubuntu 20.04.7z` en tu Mac. (ubicado en Descargas).
2. Da clic derecho sobre él para abrir el menú contextual.
3. Selecciona `Abrir con`  ➙ `Archive Utility`.


Aparecerá el archivo `Ubuntu 20.04.vdi` (archivo ya descomprimido) en la misma ubicación (en Descargas). Compruebe esto, antes de continuar al Paso 4.



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

![](https://raw.githubusercontent.com/rogelioprieto/linux-tips/master/_posts/verano2021-bioinfo-images/01A.png)


**Paso 5.** En la siguiente ventana, elige la cantidad de memoria RAM que asignarás a tu Máquina virtual.
Se recomienda asignar 4096 MB (4GB). Verifica que tu computadora tiene la cantidad de RAM suficiente para ello.

![](https://raw.githubusercontent.com/rogelioprieto/linux-tips/master/_posts/verano2021-bioinfo-images/02A.png)

**Paso 6.** Cuando aparezca esta ventana, selecciona la 3ra opción: `Usar un disco duro virtual existente`.\
Clic el ícono de carpeta (2). Aparecerá una ventana, da clic en `Añadir` (3), navega al directorio (4) donde está almacenado el archivo `.vdi` (fue descargado y descomprimido en el Paso 3).\
Selecciona el archivo `Linux Ubuntu 20.04-disk001.vdi` y da clic en `Abrir`.
Finalmente, (6) selecciona la línea `Linux Ubuntu 20.04-disk001.vdi` y da clic en el botón `Seleccionar`(7).


![](https://raw.githubusercontent.com/rogelioprieto/linux-tips/master/_posts/verano2021-bioinfo-images/03A.png)


![](https://raw.githubusercontent.com/rogelioprieto/linux-tips/master/_posts/verano2021-bioinfo-images/04A.png)


![](https://raw.githubusercontent.com/rogelioprieto/linux-tips/master/_posts/verano2021-bioinfo-images/05A.png)





**Paso 7.** Una vez que la Máquina Virtual ha sido creada.\
Selecciona la Máquina Virtual y da clic en `Configuración`.


En esta captura de pantalla, puedes observar la cantidad de memoria de video máxima que puede ser asignada a la Máquina Virtual. Si asignas la mayor cantidad posible, la Máquina Virtual puede tener un mejor rendimiento.

También revisa y activa la `Activar la Aceleración 3D`. Si tienes algún problema con VirtualBox después de activar esta opción, entonces puedes desctivarla.

![](https://raw.githubusercontent.com/rogelioprieto/linux-tips/master/_posts/verano2021-bioinfo-images/06A.png)



¡Felicidades, te esperamos en el inicio del curso!. Revisa el [calendario](https://fic.uas.edu.mx/escueladeverano/). La primera sesión será el lunes 2/agosto/2021.


**NOTA Final.** Es importante asignar una configuración inicial, ya lo hicimos. Además de esto, puedes modificar o  "jugar" con la configuración. También ten en cuenta que cambiar algunas configuraciones puede ser un problema, es posible que no pueda iniciar la máquina virtual y luego tenga que volver a cambiar esas configuraciones.

### Referencias:

1. Documentación de Oracle. <https://docs.oracle.com/cd/E26217_01/E26796/html/qs-create-vm.html>
2. How to attach/configure image with VirtualBox?. <https://www.osboxes.org/guide/>

