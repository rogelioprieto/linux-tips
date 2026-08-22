# The top 10 biggest files

```bash
find ~/Dropbox  -type f -printf '%s %p\n' | sort -nr | head
```

# The top 10 biggest files or directories
```bash
du -ah ~/Dropbox/ 2>/dev/null | sort -rh | head
```

# The top 10 biggest files or directories
```bash
du -ah ~/Dropbox/ 2>/dev/null | sort -rh | head -n 30
```

