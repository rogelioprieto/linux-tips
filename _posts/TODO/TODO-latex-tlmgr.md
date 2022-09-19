Problem: 
try to install a latex package
```
tlmgr install packagename
```

get this error:
```
/usr/bin/tlmgr: unexpected return value from verify_checksum: -5
```

Solution:
Execute tlmgr with `--no-verify-downloads` parameter to avoid verification.

```
tlmgr install packagename --no-verify-downloads
```

Source:

<https://tug.org/pipermail/tex-live/2018-January/040963.html>
