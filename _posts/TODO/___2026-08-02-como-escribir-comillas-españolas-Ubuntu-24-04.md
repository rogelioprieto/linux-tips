# Cómo escribir comillas angulares o comillas españolas en Linux.
## En versiones Ubuntu 22.04 o anteriores

| Signo | Nombre |Teclas |
|------|-----|---------|
| « |Comilas españolas de apertura.|`Alt Gr + Z`|
| » | Comilas españolas de cierre.|`Alt Gr + X`|

## En versiones Ubuntu 24.04, 26.04 y posteriores.

En las versiones recientes basadas en Ubuntu 24.04 LTS, **las comillas angulares cambiaron de lugar en la distribución de teclado Español (Latinoamérica)** debido a la actualización definitiva de los mapas base de `xkeyboard-config`. 

Las combinaciones tradicionales de `AltGr` + `Z` y `AltGr` + `X` dejaron de funcionar bajo esta asignación. 

## Nuevos atajos predeterminados en Ubuntu MATE 24.04

En la configuración por defecto de la distribución _Latinoamericana_, las comillas angulares se han trasladado a la fila numérica: 

-   **Comilla de apertura («):** Presiona `AltGr` + `Shift` + `1`
    
-   **Comilla de cierre (»):** Presiona `AltGr` + `Shift` + `2` 
    

_(Nota: En algunos teclados específicos de la región, si presionas únicamente `AltGr` + `1` u `AltGr` + `2`, podrías obtenerlas directamente, dependiendo de si el sistema cargó la variante estándar o la heredada)._ 

## ¿Por qué ocurrió este cambio específico?

El proyecto `xkb` (encargado de los mapas de teclado en Linux) reorganizó la distribución Latinoamericana para unificarla con los teclados físicos modernos vendidos en la región. Como las teclas `Z` y `X` no muestran físicamente impresas las comillas angulares en casi ningún teclado comercial, se movieron a la primera fila (`1` y `2`), donde suelen agruparse el resto de variantes de comillas y símbolos de apertura (`!`, `"`, `_`). 

## ¿Cómo regresar al comportamiento anterior?

Si tus dedos ya tienen memoria muscular con `AltGr` + `Z` / `X`, puedes forzar al sistema a usar la variante clásica: 

1.  Ve al **Menú MATE** > **Preferencias** > **Teclado**.
2.  En la pestaña **Distribuciones**, haz clic en **Añadir**.
3.  Busca **Español (Latinoamérica)** y despliega sus variantes.
4.  Selecciona **Español (Latinoamérica, eliminar teclas muertas)** o **Latinoamericano (con símbolos de programación)**. Estas variantes suelen conservar el mapeo antiguo en la fila inferior.
5.  Sube esa variante al primer lugar de la lista y elimina la anterior. 

Si esto no te funciona o prefieres no alterar la distribución, dime y te muestro cómo **asignar las comillas de forma fija a cualquier otra combinación** mediante un script rápido de mapeo.


Si usas la variante **Español (Latinoamérica, eliminar teclas muertas)**, significa que tu sistema cargó el mapeo estricto de caracteres y ha dejado deshabilitado el tercer nivel (el modificador `AltGr`) para esas teclas específicas. 

Para solucionar esto de inmediato, utiliza el visualizador nativo del sistema para confirmar la posición actual.

## 1\. Verifica visualmente dónde quedaron en tu sistema

MATE incluye una herramienta para ver exactamente qué hace cada tecla en tu configuración activa: 

1.  Ve al **Menú MATE** > **Preferencias** > **Teclado**.
2.  En la pestaña **Distribuciones**, haz clic en tu distribución actual.
3.  Presiona el botón **Mostrar** (tiene el icono de un teclado).
4.  Verás un mapa interactivo. Mantén presionada la tecla `AltGr` (y luego `AltGr` + `Shift`) en tu teclado físico. El mapa resaltará visualmente en qué teclas se esconden ahora las comillas `«` y `»`. 



## 2\. Fuerza la activación de AltGr (Solución al fallo)

Si el mapa interactivo muestra las comillas pero tu teclado físico no las escribe, el modificador `AltGr` está mal asignado. Corrígelo así: [](https://forum.gl-inet.com/t/spanish-keyboard-not-properly-mapped-comet-gl-rm1/63520)


1.  En la misma ventana de **Distribuciones**, haz clic en **Opciones...**
2.  Busca la sección llamada **Key to choose 3rd level** (Tecla para elegir el 3er nivel).
3.  Despliégala y marca la casilla **Alt de la derecha** (o _Right Alt_).
4.  Cierra la ventana. Esto obligará al sistema a reconocer las combinaciones del tercer nivel. [](https://ubuntu-mate.community/t/the-keyboard-language-switching-keys-do-not-work/28233)


## Source:
Aquí aparece cómo escribir las comillas españolas en Windows y Mac.  
https://www.infosignos.com/ascii/comillas-espanolas/
