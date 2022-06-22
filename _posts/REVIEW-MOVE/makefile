#setup
SHELL=/bin/bash
myfile=_2022-06-15-reporte-actividades-PITUAS-junio
mytemplate=docx-templates/custom-reference-georgia-arial.docx
mytemplate02=docx-templates/custom-reference-franklin-arial.docx

all:	pdf docx01
	 


pdf:   
	@echo "file: $(myfile).md"
	pandoc $(myfile).md --toc  -o $(myfile).pdf && xdg-open $(myfile).pdf &
	@echo ------------------

docx01: 
	pandoc $(myfile).md --reference-doc=$(mytemplate) --number-sections -V lang=es_MX -o $(myfile).docx && xdg-open $(myfile).docx &
	@echo ------------------
	
docx02: 
	echo $@
	pandoc $(myfile).md --reference-doc=$(mytemplate02) --number-sections -V lang=es_MX -o $(myfile).docx && xdg-open $(myfile).docx &
	@echo ------------------
