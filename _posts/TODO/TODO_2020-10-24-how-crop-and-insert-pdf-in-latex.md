# How to create and insert a pdf figure in a LaTeX document


1. Create the document in ```LibreOffice Spreadsheet``` or in ```LibreOffice Writer``` or in any software that allows you export in PDF format.
2. Export the document as ```PDF```.
3. Open the pdf file in ```Inkscape software```. If you don't have Inkscape software you can install it in your from a repository (Ubuntu repository, etc).
4. Choose: ```File -> Document Properties```

At ```Page``` tab, look ```custom size```, expand ```Resize page to content``` and click on ```Resize page to drawing or selection```.

5. Insert the pdf as figure in LaTeX, note that filename doesn't contain pdf extension.
```latex
\begin{figure}[h]
	\centering
	\includegraphics[scale=.85]{filename}
\end{figure}
```

Source:\
<https://code.luasoftware.com/tutorials/inkscape/inkscape-resize-document-to-fit-drawing/>

Review these steps too:
<https://www.charlesrcook.com/archive/2012/08/31/how-to-export-excel-plots-to-a-vector-image-eps.aspx>
