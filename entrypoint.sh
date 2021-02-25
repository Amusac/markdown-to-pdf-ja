#!/bin/sh -l

set -eux

pandoc $1 -o main.pdf --pdf-engine=lualatex \
  -V papersize=a4 -V documentclass=bxjsreport \
  -V classoption=pandoc -V classoption=jafont=ipaex