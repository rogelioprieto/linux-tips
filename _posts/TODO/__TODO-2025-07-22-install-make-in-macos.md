Install make in macOS

1. Install make using brew
brew install make

2. add this line in .bashprofile

```bash
PATH="/usr/local/opt/make/libexec/gnubin:$PATH"
```

NOTE. When make was installed show me this text:

	==> Pouring make--4.4.1.monterey.bottle.1.tar.gz
	==> Caveats
	GNU "make" has been installed as "gmake".
	If you need to use it as "make", you can add a "gnubin" directory
	to your PATH from your bashrc like:

	    PATH="/usr/local/opt/make/libexec/gnubin:$PATH"
	==> Summary
	🍺  /usr/local/Cellar/make/4.4.1: 17 files, 1.3MB
	==> Running `brew cleanup make`...
	Disable this behaviour by setting HOMEBREW_NO_INSTALL_CLEANUP.
	Hide these hints with HOMEBREW_NO_ENV_HINTS (see `man brew`).
