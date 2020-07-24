# Verify a set of shell scripts are running using pgrep and a for loop.

## Problem:
Loop through a chain of shell scripts to verify if they are running, before executing a new one.

## Solution:
```bash
#!/bin/bash

shellScripts=('a.sh' 'firefox' 'b.sh' 'c.sh')
shellScriptsLength=${#shellScripts[@]}
notRunningCounter=0
indexCounter=0;
for ((indexCounter=0; indexCounter<shellScriptsLength; indexCounter++))
do
	thisShell=${shellScripts[$indexCounter]};
        if pgrep -x $thisShell >/dev/null;
        then
            echo "$thisShell is running"
        else
            let "notRunningCounter+=1"

        fi

	#if all process were checked and one or more were running, restart to check all in the next iterations
	if  test $indexCounter -eq $((shellScriptsLength-1)) && test $notRunningCounter  -lt $shellScriptsLength
	then
		indexCounter=-1
		notRunningCounter=0
		echo "Process check was restarted."
		echo "-----------------"
		sleep 5		
	fi

done

if test $notRunningCounter -eq $shellScriptsLength
then
    echo "No scripts are running, executing somethingsomething.sh now"
fi
```


## Source:  
I answered this question in:
<https://stackoverflow.com/questions/63022987/loop-through-a-chain-of-shell-scripts-to-verify-if-they-are-running-before-exec/63025365#63025365>
