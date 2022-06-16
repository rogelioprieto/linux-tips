FILENAME= ejemplo01-listings-with-captions

all:
	pandoc $(FILENAME).md -F pandoc-crossref  --citeproc  --number-sections  --metadata-file metadata.yml   --pdf-engine latexmk  --standalone   --listings  -o $(FILENAME).tex
	latexmk -pdf -silent -synctex=1 $(FILENAME).tex && xdg-open $(FILENAME).pdf
