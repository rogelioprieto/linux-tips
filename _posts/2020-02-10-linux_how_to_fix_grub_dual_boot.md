# Como reparar GRUB DUAL BOOT desde Windows 10 

### Problema:
Este problema se da al momento de iniciar una instalacion de alguna distribucion de linux mediante un dispositivo booteado dando como mensaje
"GNU GRUB VERSION 2.02 BETA 2-9 Minimal BASH-like line editing is supported,for the first word, tab list possible command completions, anywhere else tab list posible device or file completions.". 

### Solución:
Una solucion a este problema, es seguir los pasos siguientes:


1. Ejecute un proceso `cmd.exe` con privilegios de administrador
    
2. Ejecute 

```bash
diskpart
```

3. Escriba: 

```bash
list disk 
disk X
```

donde X es la unidad en la que residen sus archivos de arranque
    
4. Escriba para ver todas las particiones (volúmenes) en el disco

```bash
list vol
```

5. Seleccione el volumen EFI escribiendo la siguiente linea donde Y es el volumen del SISTEMA (casi siempre es la partición EFI)

```bash
sel vol Y
```

6. Para mayor comodidad, asigne una letra de unidad escribiendo la siguiente linea `Z` es una letra de unidad libre (sin usar)

```bash
assign letter=Z:
```

7. Escriba lo siguiente para dejar la parte del disco

```bash
exit
```

8. Mientras todavía está en el indicador de `cmd`, escriba lo siguiente y presione enter, donde `Z` fue la letra de unidad que acaba de crear.

```bash
Z:
```

9. Escriba lo siguiente para enumerar directorios en esta partición EFI montada

```bash
dir
```

10. Si está en el lugar correcto, debería ver un directorio llamado *EFI*

11. Escriba 

```bash
cd EFI
dir
``` 

para enumerar los directorios secundarios dentro de EFI
    
12. Escriba lo siguiente para eliminar el directorio de arranque de ubuntu

```bash
rmdir / S ubuntu
```

Suponiendo que solo haya tenido dos sistemas operativos (Win 10 y Ubuntu), ahora debería poder arrancar directamente en Windows sin tocar la pantalla negra de grub.

[Link de referencia](https://answers.microsoft.com/en-us/windows/forum/all/remove-grand-unified-boot-loader-grub-from-windows/a52ab126-f76d-4fd7-a93b-ee9ecd1712a5?fbclid=IwAR2HFz80I_-M8WjlUnTx07CEl9nQ6ah-gNrjzJbd6po8xR1YMskzkpMwxl0)

Compilador: Jorge Luis Rocha Rios
