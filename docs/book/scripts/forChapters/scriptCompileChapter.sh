#! /bin/bash

#$1 is the Chapter name...

echo "Clean folder..."

rm $1.dvi
rm $1.ps
rm $1.pdf
rm *.aux
rm *~

echo "Compiling Chapter with LaTeX2e"

latex $1
latex $1

bibtex $1

./scriptBibunitcs.sh

makeindex -s $1.ist $1

latex $1
latex $1

echo "dvi2ps"

dvips -o $1.ps $1.dvi

echo "ps2pdf"

ps2pdf $1.ps
