<https://tex.stackexchange.com/questions/383678/underscore-in-bibtex-url>

Solution worked:  

I do not know why, but the other solutions did not work for me, this did however:

1. Delete auxiliary files (.bbl)

2. In the bib file, replace the url by:

    url = {{https://doi.org.123345\_6789}}

Note, the double curly braces and non arround \_.
answered Feb 22, 2021 at 16:58

user:
Nyps