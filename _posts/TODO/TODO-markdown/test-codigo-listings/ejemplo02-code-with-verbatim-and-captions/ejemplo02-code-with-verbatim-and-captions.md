This example show three (3) code blocks examples with different option to set captions.

En el [@lst:asdf] muestra las instrucciones requeridas.

~~~{#lst:asdf .haskell caption="este es el caption"}
main :: IO ()
main = putStrLn "Hello, World!"
~~~



En el [@lst:ejemplo02] muestra las instrucciones requeridas.

Listing: Ejemplo02

~~~{#lst:ejemplo02 .bash}
printf("hola");
ls -l
cd ..
~~~

En el [@lst:mypython] muestra las instrucciones requeridas.


```{#lst:mypython .python .numberLines}
def foo():
    return 1;
```

: Foo example



Ejemplo de referenciar a dos bloques de código, Ver los [@lst:ejemplo02; @lst:mypython]