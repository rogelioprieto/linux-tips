
# Remove gpg key that I added using ```apt-key add```?

1. First you need to find the key id of the key you added. Do this by the command:

```
sudo apt-key list
```

2. It will list all the keys that you have, with each entry looking like this:

```
pub   4096R/130D1D45 2019-07-15 [expires: 2020-10-07]
uid                  Spotify Public Repository Signing Key <tux@spotify.com>
```

Once you have figured out which key to remove, use the command ```sudo apt-key del <keyid>``` where ```<keyid>``` is replaced with the actual keyid of the key you want to remove from your keyring. 

```
sudo apt-key del 130D1D45
apt-key list | grep spotify
```

source: <https://askubuntu.com/questions/107177/how-can-i-remove-gpg-key-that-i-added-using-apt-key-add>


