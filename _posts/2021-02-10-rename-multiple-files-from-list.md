# Rename multiple files from a list

## Problem:

I have to rename multiple files, I have the list with filenames and I can specificy the new filename into a list (csv file).


## Solution:

1. Create your csv file, save as ```listado.csv```. The first column contains the original filename, the second column contains the NEW filename.
Example:
```bash
uno.txt,1.txt
dos.txt,2.txt
tres.txt,3.txt
```
**Note:** You don't need to type (write) the filenames in the first columns.
You can get them using this command:
```bash
ls *.txt > listado.csv
```
Then you can open and edit ```listado.csv``` to add the new filenames in the second column (don't forget type comma).

2. Create a bash script. Save it as: ```rename-all-list.sh```.
```bash
#!/bin/bash
##Rogelio Prieto, February 2021.
list_filename='listado.csv'
n=1
while read line; do
#reading each line

filename=$(echo $line | cut -d"," -f 1)
newfilename=$(echo $line | cut -d"," -f 2)

echo "Archivo No. $n : $filename"
echo "Nuevo nombre: $newfilename"
echo "======================"
mv $filename $newfilename

n=$((n+1))
done < $list_filename
```

3. Execute the ```rename-all-list.sh```script:
```bash
chmod +x rename-all-list.sh
./rename-all-list.sh
```






### Source: 
<https://linuxhint.com/read_file_line_by_line_bash/>
<https://linuxhint.com/bash_command_output_variable/>

