FILENAME= ejemplo02-code-with-verbatim-and-captions

all:
	pandoc $(FILENAME).md -F pandoc-crossref  --citeproc  --number-sections  --metadata-file metadata.yml   --pdf-engine latexmk --standalone    -o $(FILENAME).tex
	latexmk -pdf -silent -synctex=1 $(FILENAME).tex && xdg-open $(FILENAME).pdf
