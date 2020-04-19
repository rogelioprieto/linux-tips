# How to know application version in Ubuntu

## Problem: What versions are installed or available in the repository?

## Solution

In a Terminal use these commands:

```dpkg -s <package>``` - allows you to find the version of that you have installed. (source)
```apt-cache showpkg <package>``` - will show a list of Versions of the package available. For each version, the source of the package, in the form of an index file name, will be given.


### Source: <https://askubuntu.com/questions/8560/how-do-i-find-out-which-repository-a-package-comes-from>
