# Setup git using command line.

You can learn how to:

1. Type only one time username and password.

2. Steps to update your repository.


## 1. Save username and password in ```git``` using command line

If you want want to use a ```push``` and ```pull``` automatically in GitExtension, without entering my ```username``` and ```password``` in a prompt, every time. In the command line type:

```git config --global credential.helper store```

When running this command, the first time you ```pull``` or ```push``` from the remote repository, you'll get asked about the ```username``` and ```password```.

Afterwards, for consequent communications with the remote repository **you don't have **to provide the ```username``` and ```password```.

The storage format is a ```.git-credentials``` file, stored in plaintext.

### Source:

<https://stackoverflow.com/questions/35942754/how-to-save-username-and-password-in-git>


# 2. Update your repository using command line.

Optional:

You can show the list of changes in any time.

```git status```

Add all files you want to update.

```git add *.md;```


Add to commit, you can add a comment.

```git commit -m "added minor changes";```

Upload the changes (*push*) to the ```origin master``` branch.

``` git push -u origin master;```