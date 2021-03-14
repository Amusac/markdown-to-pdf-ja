#!/bin/sh

set -eux

if [ $INPUT_DEFAULT_FILE = "report" ] && [ ! -e "report.yaml" ]; then
  cp /report.yaml ./report.yaml
fi

if [ ! -e "sist02.csl" ]; then
  cp /sist02.csl ./sist02.csl
fi

if [ ! -e "refs.bib" ]; then
  cp /refs.bib ./refs.bib
fi

pandoc --defaults $INPUT_DEFAULT_FILE