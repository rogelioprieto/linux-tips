# Revista Mexicana de Física
## Uso de la plantilla en LaTeX.

Pasos para configurar la plantilla en MacOS utilizando MacTex:
1. Descargar el `.zip`
	- https://rmf.smf.mx/macrosrmf/
2. Descomprimir. Ingresar a la carpeta descomprimida.
3. Mover los archivos contenidos en la carpeta `macros_rmf` a la misma carpeta donde está el archivo `formato_rmf.tex`.
4. Compilar usando el TeXShop. Si marca error:
	- Actualizar el repositorio e instalar el paquete Babel, en la Terminal ejecutar: 
	```
    tlmgr update --self
    tlmgr install babel
    ```
5. En el archivo `formato_rmf.tex` modificar la línea 3, eliminar `spanish,` o `english,`. Debe quedar así:
````latex
\usepackage{nopageno,rmfbib,multicol,times,epsf,amsmath,amssymb}
```
4. Compilar usando el TeXShop.
