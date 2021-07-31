---
layout: post
title: Manual para configurar la Máquina Virtual - Bioinformática - Escuela de Verano 2021
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

![](https://raw.githubusercontent.com/rogelioprieto/linux-tips/master/_posts/verano2021-bioinfo-images/00.png)


**Paso 3.** Descargar la máquina virtual (archivo `.VDI`) que los instructores han preparado. Use este enlace:

[![file-icon-32px](https://raw.githubusercontent.com/rogelioprieto/linux-tips/master/_posts/verano2021-bioinfo-images/file-icon-32px.png)Linux Ubuntu 20.04.ova](https://drive.google.com/file/d/12wth4EfguJgB95OolTBm7J-MwdK7YE03/view?usp=sharing)

**Paso 4.** Ejecutar el software `Oracle VM VirtualBox`.
	a) Si usas Windows, ve a menú Inicio y busca el programa, le das clic para ejecutarlo.
    b) Si usas Mac OS ejecuta la aplicación `Launchpad`, desde ahí busca y da clic en `Oracle VM VirtualBox`.
    c) Si usas Linux, busca la aplicación en el menú de aplicaciones y ejecuta `Oracle VM VirtualBox`.


clic en el botón `Nuevo`.\
Escribe los datos del sistema operativo:  
Nombre: `Ubuntu 20.04`  
Tipo: `Linux`  
Versión: `64 bits`  
Clic en `Siguiente`.

![](https://raw.githubusercontent.com/rogelioprieto/linux-tips/master/_posts/verano2021-bioinfo-images/01.png)

![](https://www.osboxes.org/wp-content/uploads/2014/09/ot/vbox-1.jpg)

4. En la siguiente ventana, elige la cantidad de memoria RAM que asignarás a tu Máquina virtual.
Se recomienda asignar 4096 MB (4GB). Verifica que tu computadora tiene la cantidad de RAM suficiente para ello.
![](https://www.osboxes.org/wp-content/uploads/2014/09/ot/vbox-2.jpg)

![](https://raw.githubusercontent.com/rogelioprieto/linux-tips/master/_posts/verano2021-bioinfo-images/02.png)

5. Cuando aparezca esta ventana, selecciona la 3ra opción: ´Usar un disco duro virtual existente`.
Clic el ícono de carpeta (pequeño) para abrir el explorador de archivos, navega al directorio donde está almacenado el archivo .VDI (que descargaste en el Paso 1).
Selecciona el archivo ´Ubuntu 20.04.vdi` y da clic en `OK`.

![](https://raw.githubusercontent.com/rogelioprieto/linux-tips/master/_posts/verano2021-bioinfo-images/03.png)


![](https://raw.githubusercontent.com/rogelioprieto/linux-tips/master/_posts/verano2021-bioinfo-images/04.png)

![](https://raw.githubusercontent.com/rogelioprieto/linux-tips/master/_posts/verano2021-bioinfo-images/05.png)


![](https://www.osboxes.org/wp-content/uploads/2014/09/ot/vbox-3.jpg)



6. Una vez que la Máquina Virtual ha sido creada.\
Selecciona la Máquina Virtual y da clic en `Configuración`.


En esta captura de pantalla, puedes observar la cantidad de memoria de video máxima que puede ser asignada a la Máquina Virtual. Si lo haces, la Máquina Virtual puede tener un mejor rendimiento.

También revisa y activa la `Activar la Aceleración 3D`. Si tienes algún problema con VirtualBox después de activar esta opción, entonces puedes desctivarla.

![](https://raw.githubusercontent.com/rogelioprieto/linux-tips/master/_posts/verano2021-bioinfo-images/06.png)

![](https://www.osboxes.org/wp-content/uploads/2014/09/ot/vbox-4.jpg)





NOTA. Es importante asignar una configuración inicial, ya lo hicimos. Además de esto, puedes modificar o  "jugar" con la configuración. También tenga en cuenta que cambiar algunas configuraciones puede ser un problema, es posible que no pueda iniciar la máquina virtual y luego tenga que volver a cambiar esas configuraciones.



BORRAR.
7. Configurar la red. Para usar la tarjeta de red que ya está conectada a Internet, ve a la opción `Redes`.\
Selecciona `Bridged Adapter` y el adaptador que tú estás usando actualmente (elige ´wlan´ para Wifi o elige `eth` para red cableada -LAN-).

![](https://www.osboxes.org/wp-content/uploads/2014/09/ot/vbox-5.jpg)

