#!/bin/sh -l

pandoc $1 -o main.pdf --latex-engine=lualatex
  -V papersize=a4 -V documentclass=bxjsreport
  -V classoption=pandoc -V classoption=jafont=ipaex