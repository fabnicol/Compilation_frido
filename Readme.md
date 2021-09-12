# Frido and Guilietta compilation

This repository contains a Makefile that allows to
compile PDF from
[LaurentClaessens/mazhe](https://github.com/LaurentClaessens/mazhe)
repository.

A simple `make` command will generate all these PDFs.

The only dependency is [docker](https://www.docker.com).

The `make` command will create a container with all
required dependencies (pdflatex, python, ...), then
will run the docker container to build frido
and giulietta pdfs.

This repository uses GitHub CI to build these PDFs.

The generated PDFs can be downloaded from the
[Actions section](https://github.com/Gjacquenot/Compilation_frido/actions).
