
#     TRANSLIT


# Copyright (c) 1993 Jan Labanowski and JKL Enterprises, Inc.

This program was written by  Jan Labanowski and JKL Enterprises, Inc.
It is open source. I am uploading it to GitHub for preservation: it
is getting more difficult to find on the web.

I have merely added this README file, and the compile.sh script.

# Description

Translit is a program to transliterate texts in  different  character
sets. The  program  converts input character codes (or sequences of
codes) to a different set of output  character  codes  (or
sequences of  codes).  Intended for transliteration  to/from
phonetic representation   of foreign  letters  with  Latin  letters
from/to special national codes used for  these  letters.   It
supports simple  matches,  character lists and flexible matches via
regular expressions.  The new transliteration schemes  are
easily added by creating simple transliteration tables. Multiple
character sets are supported for  input and output. It does not yet
support UNICODE, but some day it will.

# Usage examples

```bash
          translit -i text-lat.txt -o text-koi8.txt -t /opt/translit/transliteration-rules/pho-koi8.rus
```

Convert transliterated file (text-lat.txt, Latin characters) to KOI8-R encoding.

Can be further piped with iconv to UTF-8:

```bash
    cat text-koi8.txt | iconv -c -f KOI8-R -t UTF-8 > text-utf.txt 
```

See details and more examples in the file translit.txt (written by Jan Labanowski) here.

# Compilation and installation (Debian derivatives)

   ```bash
        sudo mkdir -pv /opt/translit
        sudo mkdir -pv /opt/translit/transliteration-rules
        sudo mkdir -pv /opt/translit/docs
        gcc -o translit translit.c reg_exp.c reg_sub.c 
        sudo mv -vf translit /opt/translit/
        sudo cp -vf *.rus /opt/translit/transliteration-rules/
        sudo cp -vf example.* translit.txt translit.1 /opt/translit/docs
        sudo cp -vf *.txt *.doc /opt/translit/docs/
   ```


Now,  add /opt/translit to your .bashrc or .zshrc: 


   ```bash
   PATH=$PATH:/opt/translit 
   export PATH
   ```
