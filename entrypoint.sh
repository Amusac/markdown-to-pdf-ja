#!/bin/sh

set -eux

pandoc $1 -o main.pdf --pdf-engine=lualatex \
  -V documentclass=ltjsreport \
  -V classoption=pandoc \
  --citeproc --bibliography=refs.bib --csl=sist02

