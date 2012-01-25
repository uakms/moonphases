# moonphases --- Display the age of the moon.


## Introduction
Something like a 'Hello, world!' program. These scripts are very simplified.


## Functions
Output the age of the moon to stdout, mini buffer, command line, web browser.


## Configuration and Usage
### Emacs
Open the getsurei.el file, then type `M-x eval-current-buffer` and `M-x getsurei` command.

### Vim
Open the getsurei.vim file, then type `:source %` and `:call Getsurei()` command.

### Web browser
Add the following text to your HTML file, then open the file.

    <script type="text/javascript" charset="utf-8">
      <!--
        source...
      //-->
    </script>
    <noscript>
      <p>Please enable javascript in your browser.</p>
    </noscript>

### Terminal
Type the following command on terminal...

`gawk -f getsurei.awk`

`clisp getsurei.lisp`

`sbcl --script getsurei.lisp`

`lua getsurei.lua`

`ocaml getsurei.ml`

`perl getsurei.pl`

`python3 getsurei.py`

`ruby getsurei.rb`

`gosh getsurei.scm`

`sh getsurei.sh`

`gcc -o getsurei getsurei.c` and `./getsurei`

`ghc getsurei.hs` and `./getsurei`

On Windows environment, you should use the convert program like nkf, iconv.

`lua getsurei.lua | nkf32`

`ocaml getsurei.ml | iconv -f utf-8 -t cp932`


## News
- Fixed bug ocaml script. (2012-01-25)

- Added the AWK and Perl script. (2011-12-17)

- Added the Shell and Haskell script. (2011-12-16)

- Fixed bug elisp script and replaced tab with space character. Added the OCaml script. (2011-12-15)

- Added the Lua script. (2011-12-14)

- Added the Common Lisp script. (2011-12-12)

- Added the Vim script. (2011-12-11)

- First release. (2011-12-11)


---------
nakinor
