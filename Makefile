.PHONEY: test

test: test-c test-cc test-cs test-fs test-m test-swift test-ml test-hs test-go test-fortran
	@echo "Run Script file ..."
	@printf "gawk:    "
	@gawk -f getsurei.awk
	@printf "bash:    "
	@bash getsurei.sh
	@printf "zsh:     "
	@zsh getsurei.sh
	@printf "ksh:     "
	@ksh getsurei.sh
	@printf "yash:    "
	@yash getsurei.sh
	@printf "Perl:    "
	@perl getsurei.pl
	@printf "Python3: "
	@python3 getsurei.py
	@printf "Ruby:    "
	@ruby getsurei.rb
	@printf "mruby:   "
	@mruby getsurei.rb
	@printf "Lua:     "
	@lua getsurei.lua
	@printf "LuaJIT:  "
	@luajit getsurei.lua
	@printf "Gauche:  "
	@gosh getsurei.scm
	@printf "Node.js: "
	@node getsurei-node.js
	@printf "Ocaml:   "
	@ocaml getsurei.ml
	@printf "Haskell: "
	@runhaskell getsurei.hs
	@printf "SBCL:    "
	@sbcl --script getsurei.lisp
	@printf "Go:      "
	@go run getsurei.go
	@echo "Run execute Binary file ..."
	@printf "C:       "
	@./test-c
	@printf "CC:      "
	@./test-cc
	@printf "C#:      "
	@mono test-cs
	@printf "F#:      "
	@mono test-fs
	@printf "Obj-C:   "
	@./test-m
	@printf "Swift:   "
	@./test-swift
	@printf "Ocaml:   "
	@./test-ml
	@printf "Haskell: "
	@./test-hs
	@printf "Go:      "
	@./test-go
	@printf "Fortran: "
	@./test-fortran

test-c: getsurei.c
	@clang -o test-c getsurei.c

test-cc: getsurei.cc
	@clang++ -o test-cc getsurei.cc

test-cs: getsurei.cs
	@mcs -out:test-cs getsurei.cs

test-fs: getsurei.fs
	@fsharpc getsurei.fs > /dev/null
	@mv getsurei.exe test-fs

test-m: getsurei.m
	@clang -framework Foundation -o test-m getsurei.m

test-swift: getsurei.swift
	@swiftc -o test-swift getsurei.swift

test-ml: getsurei.ml
	@sed -e 's/#load "unix.cma";;//' getsurei.ml > test.ml
	@ocamlopt -o test-ml unix.cmxa test.ml
	@rm test.ml

test-hs: getsurei.hs
	@ghc -o test-hs getsurei.hs > /dev/null

test-go: getsurei.go
	@go build -o test-go getsurei.go

test-fortran: getsurei.f95
	@gfortran -o test-fortran getsurei.f95

clean:
	find . -name "test*" -exec rm -f {} ';'
	find . -name "*.hi" -exec rm -f {} ';'
	find . -name "*.o" -exec rm -f {} ';'
