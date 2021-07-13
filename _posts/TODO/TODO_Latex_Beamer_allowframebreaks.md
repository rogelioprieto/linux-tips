Source, page 60:\
<http://ctan.math.washington.edu/tex-archive/macros/latex/contrib/beamer/doc/beameruserguide.pdf>

Source:\
<https://tex.stackexchange.com/questions/193308/how-can-we-change-allowframebreaks-numbering-in-the-title>

Source:\
<https://tex.stackexchange.com/questions/147782/suppress-frame-title-when-using-allowframebreaks-in-beamer>
```latex
\setbeamertemplate{frametitle continuation}{}
```

If you want numbered as: [1] [2].
```latex
\setbeamertemplate{frametitle continuation}{[\insertcontinuationcount]}
```



