#setup
SHELL=/bin/bash
myfile =_2021-09-30-reporte-actividades-PITUAS-septiembre

all:
	@echo "file: $(myfile).md"
	pandoc $(myfile).md --toc  -o $(myfile).pdf && xdg-open $(myfile).pdf &
