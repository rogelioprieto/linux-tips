#setup
SHELL=/bin/bash
myfile=_2022-05-15-reporte-actividades-PITUAS-mayo

all:
	@echo "file: $(myfile).md"
	pandoc $(myfile).md --toc  -o $(myfile).pdf && xdg-open $(myfile).pdf &
