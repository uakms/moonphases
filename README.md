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

`clisp getsurei.lisp` or `sbcl --script getsurei.lisp`

`lua getsurei.lua`

`ocaml getsurei.ml`

`perl getsurei.pl`

`python3 getsurei.py`

`ruby getsurei.rb`

`gosh getsurei.scm`

`sh getsurei.sh`

`gcc -o getsurei getsurei.c` and `./getsurei`

`runhaskell getsurei.hs`

`javac Getsurei.java` and `java Getsurei`

`mcs getsurei.cs` and `mono getsurei.exe`

`go run getsurei.go`

`clang -framework Foundation -o getsurei getsurei.m` and `./getsurei`

`swiftc -o getsurei getsurei.swift` and `./getsurei`
(or `swift getsurei.swift`)

`clang++ getsurei.cc -o getsurei` and `./getsurei`

`fsharpc getsurei.fs` and `mono getsurei.exe`

`node getsurei-node.js`

`gfortran getsurei.f95 -o getsurei` and `./getsurei`

On Windows environment, you should use the convert program like nkf, iconv.

`lua getsurei.lua | nkf32`

`ocaml getsurei.ml | iconv -f utf-8 -t cp932`


## News
#### 2015-03-09
- Added the Fortran source.

#### 2015-11-18
- Changed Swift code from 1.1 to 2.0.

#### 2015-11-08
- Added the JavaScript for nodejs.

#### 2015-09-21
- Added the C++ and F# source.

#### 2015-09-20
- Added the Objective-C and Swift source.

#### 2015-05-21
- Removed System.Locale module in Haskell script.

#### 2015-04-28
- Fixed bug Lua script.

#### 2015-03-03
- Fixed bug Vim script.

#### 2014-09-15
- Removed utf8-string module in Haskell script.

#### 2013-11-27
- Added the golang source.

#### 2012-12-09
- Fixed bug shell script.

#### 2012-05-06
- Fixed bug awk script.

#### 2012-03-13
- Added the Java and C# sources.

#### 2012-01-25
- Fixed bug ocaml script.

#### 2011-12-17
- Added the AWK and Perl script.

#### 2011-12-16
- Added the Shell and Haskell script.

#### 2011-12-15
- Fixed bug elisp script and replaced tab with space character.

- Added the OCaml script.

#### 2011-12-14
- Added the Lua script.

#### 2011-12-12
- Added the Common Lisp script.

#### 2011-12-11
- First release.

- Added the Vim script.

#### 2011-06-14
- Added the JavaScript code.

#### 2011-04-15
- Added the C source.

- Added the Scheme script.

- Added the Python3 script.

- Added the Emacs Lisp.

- Created the Ruby script.

-------
nakinor
