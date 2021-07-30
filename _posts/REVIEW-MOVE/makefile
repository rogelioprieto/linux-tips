#setup
SHELL=/bin/bash
myfile = 2021-06-30-reporte-actividades-PITUAS-junio

all:
	echo "file: $(myfile).md"
	pandoc $(myfile).md --toc  -o $(myfile).pdf && xdg-open $(myfile).pdf &
