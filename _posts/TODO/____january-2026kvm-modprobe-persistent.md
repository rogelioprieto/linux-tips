modprobe.d configuration file example using kvm

**Pensando**

**Buscando**

![](https://encrypted-tbn2.gstatic.com/faviconV2?url=https://docs.openstack.org&client=AIM&size=128&type=FAVICON&fallback_opts=TYPE,SIZE,URL)

![](https://encrypted-tbn2.gstatic.com/faviconV2?url=https://forums.unraid.net&client=AIM&size=128&type=FAVICON&fallback_opts=TYPE,SIZE,URL)

![](https://encrypted-tbn0.gstatic.com/faviconV2?url=https://docs.darwinkvm.com&client=AIM&size=128&type=FAVICON&fallback_opts=TYPE,SIZE,URL)

![](https://encrypted-tbn0.gstatic.com/faviconV2?url=https://docs.oracle.com&client=AIM&size=128&type=FAVICON&fallback_opts=TYPE,SIZE,URL)

![](https://encrypted-tbn1.gstatic.com/faviconV2?url=https://forums.truenas.com&client=AIM&size=128&type=FAVICON&fallback_opts=TYPE,SIZE,URL)

![](https://encrypted-tbn2.gstatic.com/faviconV2?url=https://www.ibm.com&client=AIM&size=128&type=FAVICON&fallback_opts=TYPE,SIZE,URL)

![](https://encrypted-tbn2.gstatic.com/faviconV2?url=https://docs.openstack.org&client=AIM&size=128&type=FAVICON&fallback_opts=TYPE,SIZE,URL)

![](https://encrypted-tbn2.gstatic.com/faviconV2?url=https://forums.unraid.net&client=AIM&size=128&type=FAVICON&fallback_opts=TYPE,SIZE,URL)

![](https://encrypted-tbn0.gstatic.com/faviconV2?url=https://docs.darwinkvm.com&client=AIM&size=128&type=FAVICON&fallback_opts=TYPE,SIZE,URL)

**Pensando un poco más**

Para configurar parámetros de

**KVM** de forma persistente, debes crear un archivo con extensión `.conf` dentro del directorio `/etc/modprobe.d/`. 

Ejemplo: Habilitar Virtualización Anidada (Nested Virtualization) 

Este es el uso más común para permitir que una máquina virtual (VM) pueda ejecutar sus propias VMs dentro. 

**1\. Para procesadores Intel:**  
Crea el archivo `/etc/modprobe.d/kvm_intel.conf`: 

bash

    # Habilitar virtualización anidada para Intel
    options kvm_intel nested=1
    

Usa el código con precaución.

**2\. Para procesadores AMD:**  
Crea el archivo `/etc/modprobe.d/kvm_amd.conf`: 

bash

    # Habilitar virtualización anidada para AMD
    options kvm_amd nested=1
    

Usa el código con precaución.

* * *

Otros ejemplos comunes 

Puedes combinar varias opciones en un solo archivo (ej. `/etc/modprobe.d/kvm.conf`): 

| Opción                              | Descripción |
| ---                                 | ---------   |
| `options kvm ignore_msrs=1`         | Ignora errores de registros MSR no implementados (útil para evitar cierres inesperados en [invitados Windows](https://forums.truenas.com/t/midclt-how-to-add-kvm-config-options-to-modprobe/5693)). |
| `options kvm report_ignored_msrs=0` | Desactiva los mensajes de advertencia en los logs del kernel sobre MSRs ignorados. |
| `options kvm_intel enable_apicv=1`  | Habilita la virtualización avanzada de interrupciones APIC (solo Intel). |

Cómo aplicar los cambios 

Para que la nueva configuración surta efecto sin reiniciar, debes recargar los módulos (asegúrate de que no haya VMs activas): 

bash

    # Para Intel
    sudo modprobe -r kvm_intel && sudo modprobe kvm_intel
    
    # Para AMD
    sudo modprobe -r kvm_amd && sudo modprobe kvm_amd
    

Usa el código con precaución.

Puedes verificar que el parámetro se aplicó correctamente consultando la documentación de Fedora Docs o revisando el valor en el sistema de archivos del kernel:  
`cat /sys/module/kvm_intel/parameters/nested` 

¿Deseas ayuda para configurar alguna función específica como **GPU Passthrough** o **SR-IOV**?
