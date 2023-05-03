
## Why does every text editor write an additional byte (UTF-8)?
date: 2022-10-17

You are seeing a newline character (often expressed in programming languages as \n, in ASCII it is hex 0a, decimal 10):

```bash
$ echo 'foo' > /tmp/test.txt
$ xxd /tmp/test.txt
00000000: 666f 6f0a                                foo.
```

The [https://linux.die.net/man/1/xxd](hex-dump tool) xxd shows that the file consists of 4 bytes, hex 66 (ASCII lowercase f), two times hex 6f (lowercase letter o) and the newline.

You can use the -n command-line switch to disable adding the newline:

```bash
$ echo -n 'foo' > /tmp/test.txt
$ xxd /tmp/test.txt
00000000: 666f 6f                                  foo
```


or you can use `printf` instead (which is more POSIX compliant):

```bash

$ printf 'foo' > /tmp/test.txt
$ xxd /tmp/test.txt
00000000: 666f 6f                                  foo
```


¡IMPORTANT NOTE!. Many editors including `gedit` and `nano` have a feature that adds a newline character at the end of the file. `std::ofstream` doesn't have such feature, because it is used for writing non-text files as well as text files.

The feature exists because as defined by POSIX, a text file consists of lines, and by definition, a line terminates with a newline character.



> 3.206 Line

> A sequence of zero or more non- <newline> characters plus a terminating <newline> character.

> 3.403 Text File

> A file that contains characters organized into zero or more lines. The lines do not contain NUL characters and none can exceed {LINE_MAX} bytes in length, including the <newline> character. Although POSIX.1-2008 does not distinguish between text files and binary files (see the ISO C standard), many utilities only produce predictable or meaningful output when operating on text files. The standard utilities that have such restrictions always specify "text files" in their STDIN or INPUT FILES sections.



Source:\
<https://stackoverflow.com/questions/43306855/why-does-every-text-editor-write-an-additional-byte-utf-8>
