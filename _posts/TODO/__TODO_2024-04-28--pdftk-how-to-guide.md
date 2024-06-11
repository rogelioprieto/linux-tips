this notes were written for windows. Just replace REM for comments.

REM Para unir dos documentos diferentes podemos ejecutar lo siguiente desde la consola:
pdftk archivo1.pdf archivo2.pdf cat output salida.pdf

REM Tambien podemos unirlos utilizando etiquetas:
pdftk A=archivo1.pdf B=archivo2.pdf cat A B output salida.pdf

REM Y por supuesto podemos usar comodines:
pdftk *.pdf cat output salida.pdf

REM Para separar páginas de varios documentos y crear un documento nuevo con estas hacemos lo siguiente:
pdftk A=uno.pdf B=dos.pdf cat A1-7 B1-5 output salida.pdf

REM Otro ejemplo con un solo documento:
pdftk A=archivo1.pdf cat A1-12 A14-end output salida.pdf

REM Para encriptar con una clave de 128 bits (opción por defecto) y restringir todos los permisos (opción por defecto):
pdftk archivo.pdf output archivo_encriptado.pdf owner_pw foopass

REM Para encriptar igual que el caso anterior pero asignando una contraseña "miclv" que permite abrir el archivo de salida:
pdftk archivo.pdf output archivo_encriptado.pdf owner_pw foo user_pw miclv

REM Igual que el caso anterior pero con permiso de impresión:
pdftk archivo.pdf output archivo_encriptado.pdf owner_pw foo user_pw miclv allow printing

REM Para desencriptar:
pdftk asegurado.pdf input_pw foopass output inseguro.pdf

REM Para repara un archivo pdf:
pdftk corrupto.pdf output arreglado.pdf

REM Para descomprimir un archivo pdf para su posterior edición en algún editor de texto:
pdftk midoc.pdf output midoc_desc.pdf uncompress

REM Para separar cada una de las páginas del documento:
pdftk in.pdf burst

REM Para generar un reporte del documento:
pdftk archivo.pdf dump_data output reporte.txt

REM Multistamp
pdftk fondo.pdf multistamp stamp.pdf output salida.pdf

REM Stamp
pdftk fondo.pdf stamp stamp.pdf output salida.pdf
Source:
<https://gist.github.com/jgdoncel/7097368>
