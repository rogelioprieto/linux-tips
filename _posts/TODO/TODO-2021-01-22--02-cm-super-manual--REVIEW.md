1. Create a \LaTeX file with this content:
```latex
\documentclass{article}
\usepackage[T1]{fontenc}
\begin{document}
blub

This document are using bitmaps fonts, if you increase zoom you can see the pixels. 
It should be using vectorial fonts. 

To fix this problem you should install \texttt{cm-super}  or \texttt{lmodern} package.

More information:\\
\texttt{https://www.latex.um.es/retazos/apendice\_01/instalar\_T1\_vectoriales.htm}


\end{document}
```
2. Compile it with:
```bash
pdflatex test.tex
```

3. Open the resultant pdf with:
```bash
atril test.pdf
```

If you increase zoom, you will see pixeled letters. Why is this happenning?

Your document is using <<T3 fonts>>. You can see it in ```File->Properties->Fonts tab``` in evince, atril or in Adobe Reader.

## Solution:
### Option 1. Install ```cm-super``` package and do nothing in your ```.tex``` file.
```bash
sudo apt-get -y install cm-super
```


### Option 2. Install the ```lmodern``` LaTeX package and includes this line your .tex file:
Considerations: ```lmodern``` is included in ```texlive-fonts-recommended``` package. If you already have installed this package you don't need install lmodern package; in other way, you can install it alone:

```
sudo apt-get -y install lmodern
```
your ```.tex``` file contains lmodern package (line 3):
```latex
\documentclass{article}
\usepackage[T1]{fontenc}
\usepackage{lmodern}

\begin{document}
blub

This document are using bitmaps fonts, if you increase zoom you can see the pixels. 
It should be using vectorial fonts. 

To fix this problem you should install \texttt{cm-super} package.

More information:\\
\texttt{https://www.latex.um.es/retazos/apendice\_01/instalar\_T1\_vectoriales.htm}
\end{document}
```


## Source:
<https://www.latex.um.es/retazos/apendice_01/instalar_T1_vectoriales.htm>

