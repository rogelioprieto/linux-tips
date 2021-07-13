#setup
SHELL=/bin/bash
myfile = 2021-05-30-reporte-actividades-PITUAS-mayo

all:
	echo "file: $(myfile).md"
	pandoc $(myfile).md --toc  -o $(myfile).pdf && xdg-open $(myfile).pdf &
