

The only reason I use awk is the auto-splitting:
```
awk '{print $3}' < file.in
```
This prints the third whitespace-delimited field in file.in. It's a bit easier than:
```
tr -s ' ' < file.in | cut -d' ' -f3
```

