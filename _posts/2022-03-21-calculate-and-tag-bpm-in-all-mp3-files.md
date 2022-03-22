---
layout: post
title: Calculate and tag bpm in all mp3 files (music collection)
categories: bash
---

## Problem: 

I want to make playlist with songs that have similar "velocity". The metric is bpm (_beats per minute_). So manually you can edit bpm field info for each file; but how can calculate bpm and tag for all files automatically?

## Solution:
To solve it, you can make execute a script that use the `bpm-tools` in Ubuntu. Before use the script, all your directories and mp3 filenames should not contain any spaces; `spaces` will be replaced with `_` using another two scripts. 

### Step by step:

1. Install the required packages. Open a Terminal and type:
```
sudo apt-get install bpm-tools
sudo apt-get install libsox-fmt-mp3
```

2. Rename all the directories in your music folder. This will replace spaces in the filename.

```
find . -type d -name "* *" -follow -print | while read file; do echo "$file" new name is: ${file// /_}; mv "$file" ${file// /_}; done
```

3. Rename all the directories in your music folder. This will replace spaces in the filename.

```
find . -type f -name "* *" -follow -print | while read file; do echo "$file" new name is: ${file// /_}; mv "$file" ${file// /_}; done
```

4. [Download the file here](https://raw.githubusercontent.com/rogelioprieto/bash-scripts/master/get-bpm-current-folder.sh) or create it as a new file, use this name: `get-bpm-current-folder.sh`. Type these lines inside:
```
#!/bin/bash
#initialize counter variable
counter_file=0
#process each .mp3 file
while read -r line ; do
	echo "=============="
    #incrementar el contador de archivos.
    counter_file=$(($counter_file+1))
	#show filename
    echo $counter_file.file:\"$line\"

    #add quotes at begin and end
    #line=$(echo \"$line\")
    #echo "line=$line"
    bpm-tag $line
    #echo \"$line\" | echo
done <<< "$(find . -name '*.mp3'   -type f  -follow -print)"
#explanation about this subshell: https://stackoverflow.com/questions/16854280/a-variable-modified-inside-a-while-loop-is-not-remembered
echo "=============="
echo "=============="
echo $counter_file"  .mp3 files were analyzed."
```

Change the permissions to execute, type:
```
chmod +x get-bpm-current-folder.sh
```

Execute the script:
```
./get-bpm-current-folder.sh
```



## Source:
<https://askubuntu.com/questions/86113/how-can-i-detect-the-bpm-beats-per-minute-of-a-song>\
<http://manpages.ubuntu.com/manpages/focal/man1/bpm.1.html>\
<http://mywiki.wooledge.org/ParsingLs>\
<https://stackoverflow.com/questions/105212/recursively-list-all-files-in-a-directory-including-files-in-symlink-directories>\
<https://stackoverflow.com/questions/16317961/how-to-process-each-output-line-in-a-loop>
<https://stackoverflow.com/questions/44050676/find-files-with-spaces-in-the-bash>\
<https://stackoverflow.com/questions/16854280/a-variable-modified-inside-a-while-loop-is-not-remembered>\


