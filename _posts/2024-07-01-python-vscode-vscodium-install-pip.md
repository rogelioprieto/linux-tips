---
layout: post
title: "install pip in an virtual environment in VS Codium or VS Code"
categories: python programming
---

## Problem: 

Compile in VS Codium or VS Code appears an error: `Package <name> is not installed`.
You try to install using `pip` and another error appears: `ModuleNotFoundError: No module named 'pip'`.

## Solution:
To solve it, you need to install the pip package in the virtual environment. After that, install the package you're needing.


### Step by step:

1. Open Visual Studio, you sure that the virtual environment is active. In the `Terminal tab` you can see this or similar prompt: 
```bash
(.venv) usuario@mycomputer:~$`
```

Optionally, you can check your python version: `python --version` or `python3 --version`.

1. [Download](https://pip.pypa.io/en/stable/installation/) and execute `get-pip.py` to install `pip package`

```bash
python get-pip.py
```

3. Install the package you need. For example to install the pandas package:

```bash
pip install pandas
```


## Source:

<https://codedamn.com/news/python/how-to-fix-no-module-named-pip>  
<https://pip.pypa.io/en/stable/installing/>  
<https://pip.pypa.io/en/stable/installation/>