**Consejo LaTeX**. Cuando se utilizan leyendas en las tablas aparece un nombre inicial (por defecto en inglés: "Table" y en español: "Cuadro") acompañado de una numeración. Para cambiar ese nombre se puede utilizar el siguiente comando LaTeX ([url información](https://tex.stackexchange.com/questions/80443/change-the-word-table-in-table-captions)), con el nuevo nombre "Tabla" y colocarlo justo después de la cabecera "yaml" del documento
R Markdown.
```latex
\renewcommand\tablename{Tabla}
```
Con el paquete "babel-spanish" sería:
```latex
\renewcommand\spanishtablename{Tabla}
```


Source:\
<http://destio.us.es/calvo/ficheros/ComoCrearTablasRMarkdown_PedroLuque_2019Sep_librodigital.pdf>