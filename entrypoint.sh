#!/bin/sh -l

set -eux

echo `kpsewhich --var-value=TEXMFLOCAL`


# echo `kpsewhich --var-value=TEXMFHOME`
# /github/home/texmf

pandoc $1 -o main.pdf --pdf-engine=lualatex \
  -V documentclass=bxjsreport \
  -V classoption=pandoc
#   -V classoption=jafont=ipaex