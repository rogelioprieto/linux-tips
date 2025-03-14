# Convert woff2 to ttf format



Yes, you will need to convert the `.woff` to a `.ttf` before Ubuntu can use it. A simple way to do this would be to use the `woff2` package that is part of Universe. You can install it like this:

    sudo apt install woff2

Once installed, you can convert a `.woff` to a `.ttf` like this:

    woff2_decompress fontname.woff2

If you would like to convert a `.ttf` to a `.woff`, you can do this:

    woff2_compress fontname.ttf

Hope this helps


Source:  
<https://askubuntu.com/a/1322166/822132>
