#!/bin/sh -l

set -eux

# echo `kpsewhich --var-value=TEXMFLOCAL`
# /opt/texlive/texmf-local

# echo `kpsewhich --var-value=TEXMFHOME`
# /github/home/texmf

# mkdir -p `kpsewhich --var-value=TEXMFLOCAL`/fonts/opentype/public/haranoaji

# git clone https://github.com/trueroad/HaranoAjiFonts.git `kpsewhich --var-value=TEXMFLOCAL`/fonts/opentype/public/haranoaji

# mktexlsr

pandoc $1 -o main.pdf --pdf-engine=lualatex \
  -V documentclass=ltjsreport \
  -V classoption=pandoc
#   -V classoption=jafont=ipaex
