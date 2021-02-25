#!/bin/sh -l

set -eux

tlmgr update --self && \
    tlmgr install \
        bxjscls \
        bxwareki \
        everyhook \
        ipaex \
        luatexja \
        svn-prov \
        type1cm && \
    tlmgr update latex

pandoc $1 -o main.pdf --pdf-engine=lualatex \
  -V documentclass=bxjsreport \
  -V classoption=pandoc -V classoption=jafont=ipaex