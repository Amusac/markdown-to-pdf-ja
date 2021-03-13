#!/bin/sh

set -eux

echo $PATH

pandoc $1 -o main.pdf --pdf-engine=lualatex \
  -V documentclass=ltjsreport \
  -V classoption=pandoc

