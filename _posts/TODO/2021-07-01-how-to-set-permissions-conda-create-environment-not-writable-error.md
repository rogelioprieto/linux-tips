# Conda or Miniconda error: "NotWritableError: The current user does not have write permissions to a required path."

Solution.

1. Create a group called with any name, for example, `miniconda3`

2. Add users to the group

```bash
# add users to miniconda3 group
MYGROUP=miniconda3
sudo usermod -a -G $MYGROUP mmnieto
sudo usermod -a -G $MYGROUP glopez
```

3. Set permissions for all elements inside (recursive) with `root` owner and `miniconda3` group owner.

```bash
sudo chown -R root:miniconda3 /usr/local/bin/miniconda3/
```


## Sources:
<https://stackoverflow.com/questions/55290271/updating-anaconda-fails-environment-not-writable-error>  
<https://github.com/conda/conda/issues/7267>  
<https://github.com/conda/conda/issues/8553>



