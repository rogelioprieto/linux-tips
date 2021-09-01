# how to see which conda packages are installed in a environment

## Problem:
You are using conda or minicoonda, you have created an environment and need to know which packages (names and versions) are installed. 

## Solution:

Activate the environment, and get the list.


The fix is quite easy to apply (but it was not easy to find the right one!). 


**Step 1.** Get the environment list
```bash
conda env list
```

**Step 2.** Activate the environment you need.
```bash
conda activate myenvironmentname
```
**Step 3.** Get the package list (name and versions).


```bash
conda list
```

## Source:

<https://conda.io/projects/conda/en/latest/user-guide/tasks/manage-environments.html>

