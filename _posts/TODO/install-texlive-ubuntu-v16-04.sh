sudo apt-get install texlive-latex-base
pdflatex myfile.tex
sudo apt-get install latexmk
latexmk -pdf myfile.tex
 
sudo apt-get install texlive-lang-spanish
sudo apt-get install texlive-fonts-recommended
 
sudo apt-get install cm-super
cd ~
mkdir texmf
tlmgr init-usertree
sudo tlmgr paper letter
 
sudo apt-get install xzdec
tlmgr repository add ftp://tug.org/historic/systems/texlive/2015/tlnet-final/
tlmgr repository list
tlmgr repository remove http://mirror.ctan.org/systems/texlive/tlnet
tlmgr option repository ftp://tug.org/historic/systems/texlive/2015/tlnet-final/
